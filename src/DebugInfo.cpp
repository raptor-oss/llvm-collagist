#include "llvm/IR/Module.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/InstIterator.h"
#include "llvm/IR/IntrinsicInst.h"
#include "llvm/Support/SourceMgr.h"
#include "llvm/IRReader/IRReader.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/DebugInfoMetadata.h"
#include "llvm/Support/ErrorHandling.h"

#include <DebugInfo.h>

using namespace llvm;

static Metadata *
stripLoopMDLoc(const SmallPtrSetImpl<Metadata *> &AllDILocation,
                             const SmallPtrSetImpl<Metadata *> &DIReachable, Metadata *MD) {
    if (isa<DILocation>(MD) || AllDILocation.count(MD))
    return nullptr;

    if (!DIReachable.count(MD))
    return MD;

    MDNode *N = dyn_cast_or_null<MDNode>(MD);
    if (!N)
    return MD;

    SmallVector<Metadata *, 4> Args;
    bool HasSelfRef = false;
    for (unsigned i = 0; i < N->getNumOperands(); ++i) {
    Metadata *A = N->getOperand(i);
    if (!A) {
        Args.push_back(nullptr);
    } else if (A == MD) {
        assert(i == 0 && "expected i==0 for self-reference");
        HasSelfRef = true;
        Args.push_back(nullptr);
    } else if (Metadata *NewArg =
                                 stripLoopMDLoc(AllDILocation, DIReachable, A)) {
        Args.push_back(NewArg);
    }
    }
    if (Args.empty() || (HasSelfRef && Args.size() == 1))
    return nullptr;

    MDNode *NewMD = N->isDistinct() ? MDNode::getDistinct(N->getContext(), Args)
                                                                : MDNode::get(N->getContext(), Args);
    if (HasSelfRef)
    NewMD->replaceOperandWith(0, NewMD);
    return NewMD;
}

static MDNode *updateLoopMetadataDebugLocationsImpl(
    MDNode *OrigLoopID, function_ref<Metadata *(Metadata *)> Updater) {
    assert(OrigLoopID && OrigLoopID->getNumOperands() > 0 &&
             "Loop ID needs at least one operand");
    assert(OrigLoopID && OrigLoopID->getOperand(0).get() == OrigLoopID &&
             "Loop ID should refer to itself");

    // Save space for the self-referential LoopID.
    SmallVector<Metadata *, 4> MDs = {nullptr};

    for (unsigned i = 1; i < OrigLoopID->getNumOperands(); ++i) {
    Metadata *MD = OrigLoopID->getOperand(i);
    if (!MD)
        MDs.push_back(nullptr);
    else if (Metadata *NewMD = Updater(MD))
        MDs.push_back(NewMD);
    }

    MDNode *NewLoopID = MDNode::getDistinct(OrigLoopID->getContext(), MDs);
    // Insert the self-referential LoopID.
    NewLoopID->replaceOperandWith(0, NewLoopID);
    return NewLoopID;
}

static bool isDILocationReachable(SmallPtrSetImpl<Metadata *> &Visited,
                                                                    SmallPtrSetImpl<Metadata *> &Reachable,
                                                                    Metadata *MD) {
    MDNode *N = dyn_cast_or_null<MDNode>(MD);
    if (!N)
    return false;
    if (isa<DILocation>(N) || Reachable.count(N))
    return true;
    if (!Visited.insert(N).second)
    return false;
    for (auto &OpIt : N->operands()) {
    Metadata *Op = OpIt.get();
    if (isDILocationReachable(Visited, Reachable, Op)) {
        // Don't return just yet as we want to visit all MD's children to
        // initialize DILocationReachable in stripDebugLocFromLoopID
        Reachable.insert(N);
    }
    }
    return Reachable.count(N);
}

static bool isAllDILocation(SmallPtrSetImpl<Metadata *> &Visited,
                                                        SmallPtrSetImpl<Metadata *> &AllDILocation,
                                                        const SmallPtrSetImpl<Metadata *> &DIReachable,
                                                        Metadata *MD) {
    MDNode *N = dyn_cast_or_null<MDNode>(MD);
    if (!N)
    return false;
    if (isa<DILocation>(N) || AllDILocation.count(N))
    return true;
    if (!DIReachable.count(N))
    return false;
    if (!Visited.insert(N).second)
    return false;
    for (auto &OpIt : N->operands()) {
    Metadata *Op = OpIt.get();
    if (Op == MD)
        continue;
    if (!isAllDILocation(Visited, AllDILocation, DIReachable, Op)) {
        return false;
    }
    }
    AllDILocation.insert(N);
    return true;
}

MDNode *stripDebugLocFromLoopID(MDNode *N) {
    assert(!N->operands().empty() && "Missing self reference?");
    SmallPtrSet<Metadata *, 8> Visited, DILocationReachable, AllDILocation;
    // If we already visited N, there is nothing to do.
    if (!Visited.insert(N).second)
    return N;

    // If there is no debug location, we do not have to rewrite this
    // MDNode. This loop also initializes DILocationReachable, later
    // needed by updateLoopMetadataDebugLocationsImpl; the use of
    // count_if avoids an early exit.
    if (!llvm::count_if(llvm::drop_begin(N->operands()),
                                     [&Visited, &DILocationReachable](const MDOperand &Op) {
                                         return isDILocationReachable(
                                                                Visited, DILocationReachable, Op.get());
                                     }))
    return N;

    Visited.clear();
    // If there is only the debug location without any actual loop metadata, we
    // can remove the metadata.
    if (llvm::all_of(llvm::drop_begin(N->operands()),
                                 [&Visited, &AllDILocation,
                                    &DILocationReachable](const MDOperand &Op) {
                                     return isAllDILocation(Visited, AllDILocation,
                                                                                    DILocationReachable, Op.get());
                                 }))
    return nullptr;

    return updateLoopMetadataDebugLocationsImpl(
        N, [&AllDILocation, &DILocationReachable](Metadata *MD) -> Metadata * {
            return stripLoopMDLoc(AllDILocation, DILocationReachable, MD);
        });
}

void stripDebugInfoFromBB(BasicBlock &BB) {

    DenseMap<MDNode *, MDNode *> LoopIDsMap;

    for (Instruction &I : llvm::make_early_inc_range(BB)) {
        if (isa<DbgInfoIntrinsic>(&I)) {
            I.eraseFromParent();
            continue;
        }
        if (I.getDebugLoc()) {
            I.setDebugLoc(DebugLoc());
        }
        if (auto *LoopID = I.getMetadata(LLVMContext::MD_loop)) {
            auto *NewLoopID = LoopIDsMap.lookup(LoopID);
            if (!NewLoopID)
                NewLoopID = LoopIDsMap[LoopID] = stripDebugLocFromLoopID(LoopID);
            if (NewLoopID != LoopID)
                I.setMetadata(LLVMContext::MD_loop, NewLoopID);
        }
        // Strip other attachments that are or use debug info.
        if (I.hasMetadataOtherThanDebugLoc()) {
            // Heapallocsites point into the DIType system.
            I.setMetadata("heapallocsite", nullptr);
            // DIAssignID are debug info metadata primitives.
            I.setMetadata(LLVMContext::MD_DIAssignID, nullptr);
        }
    }
}
