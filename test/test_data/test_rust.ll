; ModuleID = 'sample.13fc4e0e-cgu.0'
source_filename = "sample.13fc4e0e-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::fmt::Arguments" = type { { [0 x { [0 x i8]*, i64 }]*, i64 }, { i64*, i64 }, { [0 x { i8*, i64* }]*, i64 } }
%"unwind::libunwind::_Unwind_Exception" = type { i64, void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [2 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }
%"core::fmt::Formatter" = type { { i64, i64 }, { i64, i64 }, { {}*, [3 x i64]* }, i32, i32, i8, [7 x i8] }

@alloc32 = private unnamed_addr constant <{ [0 x i8] }> zeroinitializer, align 8
@alloc8 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c" is positive" }>, align 1
@alloc7 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [0 x i8] }>, <{ [0 x i8] }>* @alloc32, i32 0, i32 0, i32 0), [8 x i8] zeroinitializer, i8* getelementptr inbounds (<{ [12 x i8] }>, <{ [12 x i8] }>* @alloc8, i32 0, i32 0, i32 0), [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@alloc14 = private unnamed_addr constant <{ [43 x i8] }> <{ [43 x i8] c", and is a small number, increase ten-fold\0A" }>, align 1
@alloc15 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [43 x i8] }>, <{ [43 x i8] }>* @alloc14, i32 0, i32 0, i32 0), [8 x i8] c"+\00\00\00\00\00\00\00" }>, align 8
@alloc19 = private unnamed_addr constant <{ [40 x i8] }> <{ [40 x i8] c", and is a big number, halve the number\0A" }>, align 1
@alloc20 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [40 x i8] }>, <{ [40 x i8] }>* @alloc19, i32 0, i32 0, i32 0), [8 x i8] c"(\00\00\00\00\00\00\00" }>, align 8
@alloc26 = private unnamed_addr constant <{ [4 x i8] }> <{ [4 x i8] c" -> " }>, align 1
@alloc27 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc25 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [0 x i8] }>, <{ [0 x i8] }>* @alloc32, i32 0, i32 0, i32 0), [8 x i8] zeroinitializer, i8* getelementptr inbounds (<{ [4 x i8] }>, <{ [4 x i8] }>* @alloc26, i32 0, i32 0, i32 0), [8 x i8] c"\04\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc27, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@vtable.1 = private unnamed_addr constant <{ i8*, [16 x i8], i8*, i8*, i8*, [0 x i8] }> <{ i8* bitcast (void (i64**)* @"_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17he8191ac14b852f73E" to i8*), [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i32 (i64**)* @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h37ca8003aa64d3aaE" to i8*), i8* bitcast (i32 (i64**)* @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h462a03de1a6e9d7aE" to i8*), i8* bitcast (i32 (i64**)* @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h462a03de1a6e9d7aE" to i8*), [0 x i8] zeroinitializer }>, align 8

; core::ops::function::FnOnce::call_once{{vtable.shim}}
; Function Attrs: inlinehint minsize optsize uwtable
define internal i32 @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h37ca8003aa64d3aaE"(i64** nocapture readonly %_1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !6 {
start:
  %0 = bitcast i64** %_1 to void ()**, !dbg !14
  %1 = load void ()*, void ()** %0, align 8, !dbg !14, !nonnull !13
; call std::sys_common::backtrace::__rust_begin_short_backtrace
  tail call fastcc void @_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h88db5753d0449bcbE(void ()* nonnull %1), !dbg !15, !noalias !24
  ret i32 0, !dbg !14
}

; core::ptr::drop_in_place<std::rt::lang_start<()>::{{closure}}>
; Function Attrs: inlinehint minsize mustprogress nofree norecurse nosync nounwind optsize readnone uwtable willreturn
define internal void @"_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17he8191ac14b852f73E"(i64** nocapture readnone %_1) unnamed_addr #1 !dbg !27 {
start:
  ret void, !dbg !30
}

; sample::main
; Function Attrs: minsize optsize uwtable
define internal void @_ZN6sample4main17h2d3e56a54a8f5081E() unnamed_addr #2 !dbg !31 {
start:
  %_77 = alloca [2 x { i8*, i64* }], align 8
  %_70 = alloca %"core::fmt::Arguments", align 8
  %_58 = alloca %"core::fmt::Arguments", align 8
  %_49 = alloca %"core::fmt::Arguments", align 8
  %big_n = alloca i32, align 4
  %_26 = alloca [1 x { i8*, i64* }], align 8
  %_19 = alloca %"core::fmt::Arguments", align 8
  %n = alloca i32, align 4
  %0 = bitcast i32* %n to i8*, !dbg !34
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0), !dbg !34
  store i32 5, i32* %n, align 4, !dbg !35
  %1 = bitcast %"core::fmt::Arguments"* %_19 to i8*, !dbg !36
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %1), !dbg !36
  %2 = bitcast [1 x { i8*, i64* }]* %_26 to i8*, !dbg !36
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2), !dbg !36
  %3 = bitcast [1 x { i8*, i64* }]* %_26 to i32**, !dbg !36
  store i32* %n, i32** %3, align 8, !dbg !36
  %4 = getelementptr inbounds [1 x { i8*, i64* }], [1 x { i8*, i64* }]* %_26, i64 0, i64 0, i32 1, !dbg !36
  store i64* bitcast (i1 (i32*, %"core::fmt::Formatter"*)* @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h4d9378d3353841dcE" to i64*), i64** %4, align 8, !dbg !36
  %5 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_19, i64 0, i32 0, i32 0, !dbg !37
  store [0 x { [0 x i8]*, i64 }]* bitcast (<{ i8*, [8 x i8], i8*, [8 x i8] }>* @alloc7 to [0 x { [0 x i8]*, i64 }]*), [0 x { [0 x i8]*, i64 }]** %5, align 8, !dbg !37, !alias.scope !43, !noalias !46
  %6 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_19, i64 0, i32 0, i32 1, !dbg !37
  store i64 2, i64* %6, align 8, !dbg !37, !alias.scope !43, !noalias !46
  %7 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_19, i64 0, i32 1, i32 0, !dbg !37
  %8 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_19, i64 0, i32 2, i32 0, !dbg !37
  %9 = bitcast i64** %7 to i8*, !dbg !37
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false), !dbg !37, !alias.scope !43, !noalias !46
  %10 = bitcast [0 x { i8*, i64* }]** %8 to [1 x { i8*, i64* }]**, !dbg !37
  store [1 x { i8*, i64* }]* %_26, [1 x { i8*, i64* }]** %10, align 8, !dbg !37, !alias.scope !43, !noalias !46
  %11 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_19, i64 0, i32 2, i32 1, !dbg !37
  store i64 1, i64* %11, align 8, !dbg !37, !alias.scope !43, !noalias !46
; call std::io::stdio::_print
  call void @_ZN3std2io5stdio6_print17h56750a7b9b0c9427E(%"core::fmt::Arguments"* noalias nocapture noundef nonnull dereferenceable(48) %_19), !dbg !36
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %1), !dbg !36
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2), !dbg !36
  %12 = bitcast i32* %big_n to i8*, !dbg !49
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12), !dbg !49
  %_45 = load i32, i32* %n, align 4, !dbg !50
  %13 = add i32 %_45, 9, !dbg !50
  %14 = icmp ult i32 %13, 19, !dbg !50
  br i1 %14, label %bb19, label %bb22, !dbg !50

bb22:                                             ; preds = %start
  %15 = bitcast %"core::fmt::Arguments"* %_58 to i8*, !dbg !51
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %15), !dbg !51
  %16 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_58, i64 0, i32 0, i32 0, !dbg !52
  store [0 x { [0 x i8]*, i64 }]* bitcast (<{ i8*, [8 x i8] }>* @alloc20 to [0 x { [0 x i8]*, i64 }]*), [0 x { [0 x i8]*, i64 }]** %16, align 8, !dbg !52, !alias.scope !54, !noalias !57
  %17 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_58, i64 0, i32 0, i32 1, !dbg !52
  store i64 1, i64* %17, align 8, !dbg !52, !alias.scope !54, !noalias !57
  %18 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_58, i64 0, i32 1, i32 0, !dbg !52
  %19 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_58, i64 0, i32 2, i32 0, !dbg !52
  %20 = bitcast i64** %18 to i8*, !dbg !52
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %20, i8 0, i64 16, i1 false), !dbg !52, !alias.scope !54, !noalias !57
  store [0 x { i8*, i64* }]* bitcast (<{ [0 x i8] }>* @alloc32 to [0 x { i8*, i64* }]*), [0 x { i8*, i64* }]** %19, align 8, !dbg !52, !alias.scope !54, !noalias !57
  %21 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_58, i64 0, i32 2, i32 1, !dbg !52
  store i64 0, i64* %21, align 8, !dbg !52, !alias.scope !54, !noalias !57
; call std::io::stdio::_print
  call void @_ZN3std2io5stdio6_print17h56750a7b9b0c9427E(%"core::fmt::Arguments"* noalias nocapture noundef nonnull dereferenceable(48) %_58), !dbg !51
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %15), !dbg !51
  %_65 = load i32, i32* %n, align 4, !dbg !60
  %22 = sdiv i32 %_65, 2, !dbg !60
  br label %bb26, !dbg !61

bb19:                                             ; preds = %start
  %23 = bitcast %"core::fmt::Arguments"* %_49 to i8*, !dbg !62
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %23), !dbg !62
  %24 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_49, i64 0, i32 0, i32 0, !dbg !63
  store [0 x { [0 x i8]*, i64 }]* bitcast (<{ i8*, [8 x i8] }>* @alloc15 to [0 x { [0 x i8]*, i64 }]*), [0 x { [0 x i8]*, i64 }]** %24, align 8, !dbg !63, !alias.scope !65, !noalias !68
  %25 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_49, i64 0, i32 0, i32 1, !dbg !63
  store i64 1, i64* %25, align 8, !dbg !63, !alias.scope !65, !noalias !68
  %26 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_49, i64 0, i32 1, i32 0, !dbg !63
  %27 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_49, i64 0, i32 2, i32 0, !dbg !63
  %28 = bitcast i64** %26 to i8*, !dbg !63
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %28, i8 0, i64 16, i1 false), !dbg !63, !alias.scope !65, !noalias !68
  store [0 x { i8*, i64* }]* bitcast (<{ [0 x i8] }>* @alloc32 to [0 x { i8*, i64* }]*), [0 x { i8*, i64* }]** %27, align 8, !dbg !63, !alias.scope !65, !noalias !68
  %29 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_49, i64 0, i32 2, i32 1, !dbg !63
  store i64 0, i64* %29, align 8, !dbg !63, !alias.scope !65, !noalias !68
; call std::io::stdio::_print
  call void @_ZN3std2io5stdio6_print17h56750a7b9b0c9427E(%"core::fmt::Arguments"* noalias nocapture noundef nonnull dereferenceable(48) %_49), !dbg !62
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %23), !dbg !62
  %_56 = load i32, i32* %n, align 4, !dbg !71
  %30 = mul i32 %_56, 10, !dbg !72
  br label %bb26, !dbg !61

bb26:                                             ; preds = %bb22, %bb19
  %storemerge = phi i32 [ %22, %bb22 ], [ %30, %bb19 ], !dbg !73
  store i32 %storemerge, i32* %big_n, align 4, !dbg !73
  %31 = bitcast %"core::fmt::Arguments"* %_70 to i8*, !dbg !74
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %31), !dbg !74
  %32 = bitcast [2 x { i8*, i64* }]* %_77 to i8*, !dbg !74
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %32), !dbg !74
  %33 = bitcast [2 x { i8*, i64* }]* %_77 to i32**, !dbg !74
  store i32* %n, i32** %33, align 8, !dbg !74
  %34 = getelementptr inbounds [2 x { i8*, i64* }], [2 x { i8*, i64* }]* %_77, i64 0, i64 0, i32 1, !dbg !74
  store i64* bitcast (i1 (i32*, %"core::fmt::Formatter"*)* @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h4d9378d3353841dcE" to i64*), i64** %34, align 8, !dbg !74
  %35 = getelementptr inbounds [2 x { i8*, i64* }], [2 x { i8*, i64* }]* %_77, i64 0, i64 1, i32 0, !dbg !74
  %36 = bitcast i8** %35 to i32**, !dbg !74
  store i32* %big_n, i32** %36, align 8, !dbg !74
  %37 = getelementptr inbounds [2 x { i8*, i64* }], [2 x { i8*, i64* }]* %_77, i64 0, i64 1, i32 1, !dbg !74
  store i64* bitcast (i1 (i32*, %"core::fmt::Formatter"*)* @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h4d9378d3353841dcE" to i64*), i64** %37, align 8, !dbg !74
  %38 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_70, i64 0, i32 0, i32 0, !dbg !75
  store [0 x { [0 x i8]*, i64 }]* bitcast (<{ i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8] }>* @alloc25 to [0 x { [0 x i8]*, i64 }]*), [0 x { [0 x i8]*, i64 }]** %38, align 8, !dbg !75, !alias.scope !77, !noalias !80
  %39 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_70, i64 0, i32 0, i32 1, !dbg !75
  store i64 3, i64* %39, align 8, !dbg !75, !alias.scope !77, !noalias !80
  %40 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_70, i64 0, i32 1, i32 0, !dbg !75
  %41 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_70, i64 0, i32 2, i32 0, !dbg !75
  %42 = bitcast i64** %40 to i8*, !dbg !75
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %42, i8 0, i64 16, i1 false), !dbg !75, !alias.scope !77, !noalias !80
  %43 = bitcast [0 x { i8*, i64* }]** %41 to [2 x { i8*, i64* }]**, !dbg !75
  store [2 x { i8*, i64* }]* %_77, [2 x { i8*, i64* }]** %43, align 8, !dbg !75, !alias.scope !77, !noalias !80
  %44 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_70, i64 0, i32 2, i32 1, !dbg !75
  store i64 2, i64* %44, align 8, !dbg !75, !alias.scope !77, !noalias !80
; call std::io::stdio::_print
  call void @_ZN3std2io5stdio6_print17h56750a7b9b0c9427E(%"core::fmt::Arguments"* noalias nocapture noundef nonnull dereferenceable(48) %_70), !dbg !74
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %31), !dbg !74
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %32), !dbg !74
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12), !dbg !83
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0), !dbg !83
  ret void, !dbg !84
}

; std::rt::lang_start
; Function Attrs: minsize optsize uwtable
define hidden i64 @_ZN3std2rt10lang_start17h2964b571ece19e55E(void ()* nonnull %main, i64 %argc, i8** %argv) unnamed_addr #2 !dbg !85 {
start:
  %_8 = alloca i64*, align 8
  %0 = bitcast i64** %_8 to i8*, !dbg !86
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0), !dbg !86
  %1 = bitcast i64** %_8 to void ()**, !dbg !86
  store void ()* %main, void ()** %1, align 8, !dbg !86
  %_5.0 = bitcast i64** %_8 to {}*, !dbg !87
; call std::rt::lang_start_internal
  %2 = call i64 @_ZN3std2rt19lang_start_internal17h358b6d58e23c88c7E({}* noundef nonnull align 1 %_5.0, [3 x i64]* noalias noundef readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8], i8*, i8*, i8*, [0 x i8] }>* @vtable.1 to [3 x i64]*), i64 %argc, i8** %argv), !dbg !88
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0), !dbg !89
  ret i64 %2, !dbg !90
}

; std::rt::lang_start::{{closure}}
; Function Attrs: inlinehint minsize optsize uwtable
define internal i32 @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h462a03de1a6e9d7aE"(i64** noalias nocapture noundef readonly align 8 dereferenceable(8) %_1) unnamed_addr #0 !dbg !16 {
start:
  %0 = bitcast i64** %_1 to void ()**, !dbg !91
  %_4 = load void ()*, void ()** %0, align 8, !dbg !91, !nonnull !13
; call std::sys_common::backtrace::__rust_begin_short_backtrace
  tail call fastcc void @_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h88db5753d0449bcbE(void ()* nonnull %_4), !dbg !92
  ret i32 0, !dbg !93
}

; std::sys_common::backtrace::__rust_begin_short_backtrace
; Function Attrs: minsize noinline optsize uwtable
define internal fastcc void @_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h88db5753d0449bcbE(void ()* nocapture nonnull readonly %f) unnamed_addr #3 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !94 {
start:
  tail call void %f(), !dbg !98
  tail call void asm sideeffect "", "r,~{memory}"({}* undef) #7, !dbg !101, !srcloc !106
  ret void, !dbg !107
}

; Function Attrs: minsize optsize uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; std::io::stdio::_print
; Function Attrs: minsize optsize uwtable
declare void @_ZN3std2io5stdio6_print17h56750a7b9b0c9427E(%"core::fmt::Arguments"* noalias nocapture noundef dereferenceable(48)) unnamed_addr #2

; std::rt::lang_start_internal
; Function Attrs: minsize optsize uwtable
declare i64 @_ZN3std2rt19lang_start_internal17h358b6d58e23c88c7E({}* noundef nonnull align 1, [3 x i64]* noalias noundef readonly align 8 dereferenceable(24), i64, i8**) unnamed_addr #2

; core::fmt::num::imp::<impl core::fmt::Display for i32>::fmt
; Function Attrs: minsize optsize uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h4d9378d3353841dcE"(i32* noalias noundef readonly align 4 dereferenceable(4), %"core::fmt::Formatter"* noalias noundef align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: minsize optsize
define i32 @main(i32 %0, i8** %1) unnamed_addr #5 {
top:
  %2 = sext i32 %0 to i64
; call std::rt::lang_start
  %3 = tail call i64 @_ZN3std2rt10lang_start17h2964b571ece19e55E(void ()* @_ZN6sample4main17h2d3e56a54a8f5081E, i64 %2, i8** %1)
  %4 = trunc i64 %3 to i32
  ret i32 %4
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { inlinehint minsize optsize uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { inlinehint minsize mustprogress nofree norecurse nosync nounwind optsize readnone uwtable willreturn "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { minsize optsize uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #3 = { minsize noinline optsize uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { minsize optsize "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.dbg.cu = !{!4}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 2, !"Dwarf Version", i32 2}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !5, producer: "clang LLVM (rustc version 1.60.0 (7737e0b5c 2022-04-04))", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!5 = !DIFile(filename: "sample.rs/@/sample.13fc4e0e-cgu.0", directory: "/Users/rkrsn")
!6 = distinct !DISubprogram(name: "call_once<std::rt::lang_start::{closure_env#0}<()>, ()>", linkageName: "_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h37ca8003aa64d3aaE", scope: !8, file: !7, line: 227, type: !12, scopeLine: 227, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !13, retainedNodes: !13)
!7 = !DIFile(filename: "/rustc/7737e0b5c4103216d6fd8cf941b7ab9bdbaace7c/library/core/src/ops/function.rs", directory: "", checksumkind: CSK_MD5, checksum: "1a40c014f8a7b8b7cd612b461a47e902")
!8 = !DINamespace(name: "FnOnce", scope: !9)
!9 = !DINamespace(name: "function", scope: !10)
!10 = !DINamespace(name: "ops", scope: !11)
!11 = !DINamespace(name: "core", scope: null)
!12 = !DISubroutineType(types: !13)
!13 = !{}
!14 = !DILocation(line: 227, column: 5, scope: !6)
!15 = !DILocation(line: 145, column: 18, scope: !16, inlinedAt: !21)
!16 = distinct !DISubprogram(name: "{closure#0}<()>", linkageName: "_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h462a03de1a6e9d7aE", scope: !18, file: !17, line: 145, type: !12, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !13, retainedNodes: !13)
!17 = !DIFile(filename: "/rustc/7737e0b5c4103216d6fd8cf941b7ab9bdbaace7c/library/std/src/rt.rs", directory: "", checksumkind: CSK_MD5, checksum: "53ba40c54b421907f2e3ab22fb96d5b4")
!18 = !DINamespace(name: "lang_start", scope: !19)
!19 = !DINamespace(name: "rt", scope: !20)
!20 = !DINamespace(name: "std", scope: null)
!21 = distinct !DILocation(line: 227, column: 5, scope: !22, inlinedAt: !23)
!22 = distinct !DISubprogram(name: "call_once<std::rt::lang_start::{closure_env#0}<()>, ()>", linkageName: "_ZN4core3ops8function6FnOnce9call_once17h28a18ef15c6e4567E", scope: !8, file: !7, line: 227, type: !12, scopeLine: 227, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !13, retainedNodes: !13)
!23 = distinct !DILocation(line: 227, column: 5, scope: !6)
!24 = !{!25}
!25 = distinct !{!25, !26, !"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h462a03de1a6e9d7aE: %_1"}
!26 = distinct !{!26, !"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h462a03de1a6e9d7aE"}
!27 = distinct !DISubprogram(name: "drop_in_place<std::rt::lang_start::{closure_env#0}<()>>", linkageName: "_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17he8191ac14b852f73E", scope: !29, file: !28, line: 188, type: !12, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !13, retainedNodes: !13)
!28 = !DIFile(filename: "/rustc/7737e0b5c4103216d6fd8cf941b7ab9bdbaace7c/library/core/src/ptr/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "0592540d568e762cd458f12fa2315832")
!29 = !DINamespace(name: "ptr", scope: !11)
!30 = !DILocation(line: 188, column: 1, scope: !27)
!31 = distinct !DISubprogram(name: "main", linkageName: "_ZN6sample4main17h2d3e56a54a8f5081E", scope: !33, file: !32, line: 1, type: !12, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized | DISPFlagMainSubprogram, unit: !4, templateParams: !13, retainedNodes: !13)
!32 = !DIFile(filename: "sample.rs", directory: "/Users/rkrsn", checksumkind: CSK_MD5, checksum: "f9db45fa76050ee27f4b48dfa5b61068")
!33 = !DINamespace(name: "sample", scope: null)
!34 = !DILocation(line: 2, column: 9, scope: !31)
!35 = !DILocation(line: 2, column: 13, scope: !31)
!36 = !DILocation(line: 7, column: 9, scope: !31)
!37 = !DILocation(line: 387, column: 9, scope: !38, inlinedAt: !42)
!38 = distinct !DISubprogram(name: "new_v1", linkageName: "_ZN4core3fmt9Arguments6new_v117h2e00d99fbfabed44E", scope: !40, file: !39, line: 383, type: !12, scopeLine: 383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !13, retainedNodes: !13)
!39 = !DIFile(filename: "/rustc/7737e0b5c4103216d6fd8cf941b7ab9bdbaace7c/library/core/src/fmt/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "7d486092cd3957d561caa81fafa9cc68")
!40 = !DINamespace(name: "Arguments", scope: !41)
!41 = !DINamespace(name: "fmt", scope: !11)
!42 = distinct !DILocation(line: 7, column: 9, scope: !31)
!43 = !{!44}
!44 = distinct !{!44, !45, !"_ZN4core3fmt9Arguments6new_v117h2e00d99fbfabed44E: argument 0"}
!45 = distinct !{!45, !"_ZN4core3fmt9Arguments6new_v117h2e00d99fbfabed44E"}
!46 = !{!47, !48}
!47 = distinct !{!47, !45, !"_ZN4core3fmt9Arguments6new_v117h2e00d99fbfabed44E: %pieces.0"}
!48 = distinct !{!48, !45, !"_ZN4core3fmt9Arguments6new_v117h2e00d99fbfabed44E: %args.0"}
!49 = !DILocation(line: 12, column: 9, scope: !31)
!50 = !DILocation(line: 13, column: 12, scope: !31)
!51 = !DILocation(line: 19, column: 13, scope: !31)
!52 = !DILocation(line: 387, column: 9, scope: !38, inlinedAt: !53)
!53 = distinct !DILocation(line: 19, column: 13, scope: !31)
!54 = !{!55}
!55 = distinct !{!55, !56, !"_ZN4core3fmt9Arguments6new_v117h2e00d99fbfabed44E: argument 0"}
!56 = distinct !{!56, !"_ZN4core3fmt9Arguments6new_v117h2e00d99fbfabed44E"}
!57 = !{!58, !59}
!58 = distinct !{!58, !56, !"_ZN4core3fmt9Arguments6new_v117h2e00d99fbfabed44E: %pieces.0"}
!59 = distinct !{!59, !56, !"_ZN4core3fmt9Arguments6new_v117h2e00d99fbfabed44E: %args.0"}
!60 = !DILocation(line: 22, column: 13, scope: !31)
!61 = !DILocation(line: 13, column: 9, scope: !31)
!62 = !DILocation(line: 14, column: 13, scope: !31)
!63 = !DILocation(line: 387, column: 9, scope: !38, inlinedAt: !64)
!64 = distinct !DILocation(line: 14, column: 13, scope: !31)
!65 = !{!66}
!66 = distinct !{!66, !67, !"_ZN4core3fmt9Arguments6new_v117h2e00d99fbfabed44E: argument 0"}
!67 = distinct !{!67, !"_ZN4core3fmt9Arguments6new_v117h2e00d99fbfabed44E"}
!68 = !{!69, !70}
!69 = distinct !{!69, !67, !"_ZN4core3fmt9Arguments6new_v117h2e00d99fbfabed44E: %pieces.0"}
!70 = distinct !{!70, !67, !"_ZN4core3fmt9Arguments6new_v117h2e00d99fbfabed44E: %args.0"}
!71 = !DILocation(line: 17, column: 18, scope: !31)
!72 = !DILocation(line: 17, column: 13, scope: !31)
!73 = !DILocation(line: 0, scope: !31)
!74 = !DILocation(line: 27, column: 5, scope: !31)
!75 = !DILocation(line: 387, column: 9, scope: !38, inlinedAt: !76)
!76 = distinct !DILocation(line: 27, column: 5, scope: !31)
!77 = !{!78}
!78 = distinct !{!78, !79, !"_ZN4core3fmt9Arguments6new_v117h2e00d99fbfabed44E: argument 0"}
!79 = distinct !{!79, !"_ZN4core3fmt9Arguments6new_v117h2e00d99fbfabed44E"}
!80 = !{!81, !82}
!81 = distinct !{!81, !79, !"_ZN4core3fmt9Arguments6new_v117h2e00d99fbfabed44E: %pieces.0"}
!82 = distinct !{!82, !79, !"_ZN4core3fmt9Arguments6new_v117h2e00d99fbfabed44E: %args.0"}
!83 = !DILocation(line: 28, column: 1, scope: !31)
!84 = !DILocation(line: 28, column: 2, scope: !31)
!85 = distinct !DISubprogram(name: "lang_start<()>", linkageName: "_ZN3std2rt10lang_start17h2964b571ece19e55E", scope: !19, file: !17, line: 139, type: !12, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !13, retainedNodes: !13)
!86 = !DILocation(line: 145, column: 10, scope: !85)
!87 = !DILocation(line: 145, column: 9, scope: !85)
!88 = !DILocation(line: 144, column: 17, scope: !85)
!89 = !DILocation(line: 148, column: 6, scope: !85)
!90 = !DILocation(line: 150, column: 2, scope: !85)
!91 = !DILocation(line: 145, column: 77, scope: !16)
!92 = !DILocation(line: 145, column: 18, scope: !16)
!93 = !DILocation(line: 145, column: 100, scope: !16)
!94 = distinct !DISubprogram(name: "__rust_begin_short_backtrace<fn(), ()>", linkageName: "_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h88db5753d0449bcbE", scope: !96, file: !95, line: 118, type: !12, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !13, retainedNodes: !13)
!95 = !DIFile(filename: "/rustc/7737e0b5c4103216d6fd8cf941b7ab9bdbaace7c/library/std/src/sys_common/backtrace.rs", directory: "", checksumkind: CSK_MD5, checksum: "0fa868f8cc86ab35ce9635f981490e7d")
!96 = !DINamespace(name: "backtrace", scope: !97)
!97 = !DINamespace(name: "sys_common", scope: !20)
!98 = !DILocation(line: 227, column: 5, scope: !99, inlinedAt: !100)
!99 = distinct !DISubprogram(name: "call_once<fn(), ()>", linkageName: "_ZN4core3ops8function6FnOnce9call_once17h8e1c350c7713a812E", scope: !8, file: !7, line: 227, type: !12, scopeLine: 227, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !13, retainedNodes: !13)
!100 = distinct !DILocation(line: 122, column: 18, scope: !94)
!101 = !DILocation(line: 174, column: 5, scope: !102, inlinedAt: !105)
!102 = distinct !DISubprogram(name: "black_box<()>", linkageName: "_ZN4core4hint9black_box17h19731977d64af107E", scope: !104, file: !103, line: 173, type: !12, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !13, retainedNodes: !13)
!103 = !DIFile(filename: "/rustc/7737e0b5c4103216d6fd8cf941b7ab9bdbaace7c/library/core/src/hint.rs", directory: "", checksumkind: CSK_MD5, checksum: "bf95e3081dc32061fc222d03331d8091")
!104 = !DINamespace(name: "hint", scope: !11)
!105 = distinct !DILocation(line: 125, column: 5, scope: !94)
!106 = !{i32 3185920}
!107 = !DILocation(line: 128, column: 2, scope: !94)
