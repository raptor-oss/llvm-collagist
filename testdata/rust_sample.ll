; ModuleID = 'sample.ec5bca52fb03c4de-cgu.0'
source_filename = "sample.ec5bca52fb03c4de-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::fmt::Arguments<'_>" = type { { ptr, i64 }, { ptr, i64 }, { ptr, i64 } }

@vtable.0 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @"_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h0775d7edefd15f84E", [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17he19b05988614424aE", ptr @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h7f27655f9316ca72E", ptr @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h7f27655f9316ca72E" }>, align 8
@alloc_513570631223a12912d85da2bec3b15a = private unnamed_addr constant <{}> zeroinitializer, align 8
@alloc_177655291faf26cb4e7ca471a2137d85 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c" is positive" }>, align 1
@alloc_266abadced59ee15c17e99af5f27460a = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc_513570631223a12912d85da2bec3b15a, [8 x i8] zeroinitializer, ptr @alloc_177655291faf26cb4e7ca471a2137d85, [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@alloc_160f6f81b91e4267cbd7a1fed60ef14b = private unnamed_addr constant <{ [43 x i8] }> <{ [43 x i8] c", and is a small number, increase ten-fold\0A" }>, align 1
@alloc_f29886ed463beff707d3d715effdebba = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @alloc_160f6f81b91e4267cbd7a1fed60ef14b, [8 x i8] c"+\00\00\00\00\00\00\00" }>, align 8
@alloc_c290fff4fce17ceebac59a75f20abbd1 = private unnamed_addr constant <{ [40 x i8] }> <{ [40 x i8] c", and is a big number, halve the number\0A" }>, align 1
@alloc_ba0c617603fcbc5345bb1f0de1c9faaf = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @alloc_c290fff4fce17ceebac59a75f20abbd1, [8 x i8] c"(\00\00\00\00\00\00\00" }>, align 8
@alloc_d92ab822b978e55c052ee90d2c85e635 = private unnamed_addr constant <{ [4 x i8] }> <{ [4 x i8] c" -> " }>, align 1
@alloc_49a1e817e911805af64bbc7efb390101 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc_559259ddd7691be9e8aaaacfd3242cd7 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc_513570631223a12912d85da2bec3b15a, [8 x i8] zeroinitializer, ptr @alloc_d92ab822b978e55c052ee90d2c85e635, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @alloc_49a1e817e911805af64bbc7efb390101, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8

; std::sys_common::backtrace::__rust_begin_short_backtrace
; Function Attrs: minsize noinline optsize uwtable
define internal fastcc void @_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17he9366b6ac088aeb7E(ptr nocapture noundef nonnull readonly %f) unnamed_addr #0 !dbg !6 {
start:
  tail call void %f(), !dbg !13
  tail call void asm sideeffect "", "~{memory}"() #6, !dbg !21, !srcloc !27
  ret void, !dbg !28
}

; std::rt::lang_start
; Function Attrs: minsize optsize uwtable
define hidden noundef i64 @_ZN3std2rt10lang_start17hab9096644dcd0a25E(ptr noundef nonnull %main, i64 noundef %argc, ptr noundef %argv, i8 noundef %sigpipe) unnamed_addr #1 !dbg !29 {
start:
  %_8 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_8), !dbg !32
  store ptr %main, ptr %_8, align 8, !dbg !32
; call std::rt::lang_start_internal
  %0 = call noundef i64 @_ZN3std2rt19lang_start_internal17hdd06e3566639fc5bE(ptr noundef nonnull align 1 %_8, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @vtable.0, i64 noundef %argc, ptr noundef %argv, i8 noundef %sigpipe), !dbg !33
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_8), !dbg !34
  ret i64 %0, !dbg !35
}

; std::rt::lang_start::{{closure}}
; Function Attrs: inlinehint minsize optsize uwtable
define internal noundef i32 @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h7f27655f9316ca72E"(ptr noalias nocapture noundef readonly align 8 dereferenceable(8) %_1) unnamed_addr #2 !dbg !36 {
start:
  %_4 = load ptr, ptr %_1, align 8, !dbg !38, !nonnull !12, !noundef !12
; call std::sys_common::backtrace::__rust_begin_short_backtrace
  tail call fastcc void @_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17he9366b6ac088aeb7E(ptr noundef nonnull %_4), !dbg !39
  ret i32 0, !dbg !40
}

; core::ops::function::FnOnce::call_once{{vtable.shim}}
; Function Attrs: inlinehint minsize optsize uwtable
define internal noundef i32 @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17he19b05988614424aE"(ptr nocapture noundef readonly %_1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !41 {
start:
  %0 = load ptr, ptr %_1, align 8, !dbg !42, !nonnull !12, !noundef !12
; call std::sys_common::backtrace::__rust_begin_short_backtrace
  tail call fastcc void @_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17he9366b6ac088aeb7E(ptr noundef nonnull %0), !dbg !43, !noalias !47
  ret i32 0, !dbg !42
}

; core::ptr::drop_in_place<std::rt::lang_start<()>::{{closure}}>
; Function Attrs: inlinehint minsize mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @"_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h0775d7edefd15f84E"(ptr noalias nocapture readnone align 8 %_1) unnamed_addr #3 !dbg !50 {
start:
  ret void, !dbg !53
}

; sample::main
; Function Attrs: minsize optsize uwtable
define internal void @_ZN6sample4main17h64bd3c7e07f9f62bE() unnamed_addr #1 !dbg !54 {
start:
  %_49 = alloca [2 x { ptr, ptr }], align 8
  %_45 = alloca %"core::fmt::Arguments<'_>", align 8
  %_41 = alloca %"core::fmt::Arguments<'_>", align 8
  %_37 = alloca %"core::fmt::Arguments<'_>", align 8
  %big_n = alloca i32, align 4
  %_19 = alloca [1 x { ptr, ptr }], align 8
  %_15 = alloca %"core::fmt::Arguments<'_>", align 8
  %_1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_1), !dbg !57
  store i32 5, ptr %_1, align 4, !dbg !58
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_15), !dbg !59
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_19), !dbg !59
  store ptr %_1, ptr %_19, align 8, !dbg !59
  %0 = getelementptr inbounds { ptr, ptr }, ptr %_19, i64 0, i32 1, !dbg !59
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17hcec6e52717c6f384E", ptr %0, align 8, !dbg !59
  store ptr @alloc_266abadced59ee15c17e99af5f27460a, ptr %_15, align 8, !dbg !61, !alias.scope !67, !noalias !70
  %1 = getelementptr inbounds { ptr, i64 }, ptr %_15, i64 0, i32 1, !dbg !61
  store i64 2, ptr %1, align 8, !dbg !61, !alias.scope !67, !noalias !70
  %2 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_15, i64 0, i32 2, !dbg !61
  store ptr null, ptr %2, align 8, !dbg !61, !alias.scope !67, !noalias !70
  %3 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_15, i64 0, i32 1, !dbg !61
  store ptr %_19, ptr %3, align 8, !dbg !61, !alias.scope !67, !noalias !70
  %4 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_15, i64 0, i32 1, i32 1, !dbg !61
  store i64 1, ptr %4, align 8, !dbg !61, !alias.scope !67, !noalias !70
; call std::io::stdio::_print
  call void @_ZN3std2io5stdio6_print17hb32ac13575752f37E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_15), !dbg !59
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_15), !dbg !59
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_19), !dbg !59
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %big_n), !dbg !73
  %_33 = load i32, ptr %_1, align 4, !dbg !74, !noundef !12
  %5 = add i32 %_33, 9, !dbg !74
  %_31.0.off0 = icmp ult i32 %5, 19, !dbg !74
  br i1 %_31.0.off0, label %bb19, label %bb22, !dbg !74

bb22:                                             ; preds = %start
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_41), !dbg !75
  store ptr @alloc_ba0c617603fcbc5345bb1f0de1c9faaf, ptr %_41, align 8, !dbg !76, !alias.scope !79, !noalias !82
  %6 = getelementptr inbounds { ptr, i64 }, ptr %_41, i64 0, i32 1, !dbg !76
  store i64 1, ptr %6, align 8, !dbg !76, !alias.scope !79, !noalias !82
  %7 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_41, i64 0, i32 2, !dbg !76
  store ptr null, ptr %7, align 8, !dbg !76, !alias.scope !79, !noalias !82
  %8 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_41, i64 0, i32 1, !dbg !76
  store ptr @alloc_513570631223a12912d85da2bec3b15a, ptr %8, align 8, !dbg !76, !alias.scope !79, !noalias !82
  %9 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_41, i64 0, i32 1, i32 1, !dbg !76
  store i64 0, ptr %9, align 8, !dbg !76, !alias.scope !79, !noalias !82
; call std::io::stdio::_print
  call void @_ZN3std2io5stdio6_print17hb32ac13575752f37E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_41), !dbg !75
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_41), !dbg !75
  %_43 = load i32, ptr %_1, align 4, !dbg !84, !noundef !12
  %10 = sdiv i32 %_43, 2, !dbg !84
  br label %bb25, !dbg !85

bb19:                                             ; preds = %start
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_37), !dbg !86
  store ptr @alloc_f29886ed463beff707d3d715effdebba, ptr %_37, align 8, !dbg !87, !alias.scope !89, !noalias !92
  %11 = getelementptr inbounds { ptr, i64 }, ptr %_37, i64 0, i32 1, !dbg !87
  store i64 1, ptr %11, align 8, !dbg !87, !alias.scope !89, !noalias !92
  %12 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_37, i64 0, i32 2, !dbg !87
  store ptr null, ptr %12, align 8, !dbg !87, !alias.scope !89, !noalias !92
  %13 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_37, i64 0, i32 1, !dbg !87
  store ptr @alloc_513570631223a12912d85da2bec3b15a, ptr %13, align 8, !dbg !87, !alias.scope !89, !noalias !92
  %14 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_37, i64 0, i32 1, i32 1, !dbg !87
  store i64 0, ptr %14, align 8, !dbg !87, !alias.scope !89, !noalias !92
; call std::io::stdio::_print
  call void @_ZN3std2io5stdio6_print17hb32ac13575752f37E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_37), !dbg !86
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_37), !dbg !86
  %_39 = load i32, ptr %_1, align 4, !dbg !94, !noundef !12
  %15 = mul i32 %_39, 10, !dbg !95
  br label %bb25, !dbg !85

bb25:                                             ; preds = %bb22, %bb19
  %storemerge = phi i32 [ %10, %bb22 ], [ %15, %bb19 ], !dbg !96
  store i32 %storemerge, ptr %big_n, align 4, !dbg !96
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_45), !dbg !97
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %_49), !dbg !97
  store ptr %_1, ptr %_49, align 8, !dbg !97
  %16 = getelementptr inbounds { ptr, ptr }, ptr %_49, i64 0, i32 1, !dbg !97
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17hcec6e52717c6f384E", ptr %16, align 8, !dbg !97
  %17 = getelementptr inbounds [2 x { ptr, ptr }], ptr %_49, i64 0, i64 1, !dbg !97
  store ptr %big_n, ptr %17, align 8, !dbg !97
  %18 = getelementptr inbounds [2 x { ptr, ptr }], ptr %_49, i64 0, i64 1, i32 1, !dbg !97
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17hcec6e52717c6f384E", ptr %18, align 8, !dbg !97
  store ptr @alloc_559259ddd7691be9e8aaaacfd3242cd7, ptr %_45, align 8, !dbg !99, !alias.scope !101, !noalias !104
  %19 = getelementptr inbounds { ptr, i64 }, ptr %_45, i64 0, i32 1, !dbg !99
  store i64 3, ptr %19, align 8, !dbg !99, !alias.scope !101, !noalias !104
  %20 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_45, i64 0, i32 2, !dbg !99
  store ptr null, ptr %20, align 8, !dbg !99, !alias.scope !101, !noalias !104
  %21 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_45, i64 0, i32 1, !dbg !99
  store ptr %_49, ptr %21, align 8, !dbg !99, !alias.scope !101, !noalias !104
  %22 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_45, i64 0, i32 1, i32 1, !dbg !99
  store i64 2, ptr %22, align 8, !dbg !99, !alias.scope !101, !noalias !104
; call std::io::stdio::_print
  call void @_ZN3std2io5stdio6_print17hb32ac13575752f37E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_45), !dbg !97
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_45), !dbg !97
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %_49), !dbg !97
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %big_n), !dbg !107
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_1), !dbg !108
  ret void, !dbg !109
}

; std::rt::lang_start_internal
; Function Attrs: minsize optsize uwtable
declare noundef i64 @_ZN3std2rt19lang_start_internal17hdd06e3566639fc5bE(ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 dereferenceable(24), i64 noundef, ptr noundef, i8 noundef) unnamed_addr #1

; core::fmt::num::imp::<impl core::fmt::Display for i32>::fmt
; Function Attrs: minsize optsize uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17hcec6e52717c6f384E"(ptr noalias noundef readonly align 4 dereferenceable(4), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #1

; Function Attrs: minsize optsize uwtable
declare noundef i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; std::io::stdio::_print
; Function Attrs: minsize optsize uwtable
declare void @_ZN3std2io5stdio6_print17hb32ac13575752f37E(ptr noalias nocapture noundef readonly dereferenceable(48)) unnamed_addr #1

define i32 @main(i32 %0, ptr %1) unnamed_addr #4 {
top:
  %2 = sext i32 %0 to i64
; call std::rt::lang_start
  %3 = tail call i64 @_ZN3std2rt10lang_start17hab9096644dcd0a25E(ptr @_ZN6sample4main17h64bd3c7e07f9f62bE, i64 %2, ptr %1, i8 0)
  %4 = trunc i64 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

attributes #0 = { minsize noinline optsize uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-m1" }
attributes #1 = { minsize optsize uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-m1" }
attributes #2 = { inlinehint minsize optsize uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-m1" }
attributes #3 = { inlinehint minsize mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-m1" }
attributes #4 = { "frame-pointer"="non-leaf" "target-cpu"="apple-m1" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.dbg.cu = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 2, !"Dwarf Version", i32 2}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !5, producer: "clang LLVM (rustc version 1.71.1 (eb26296b5 2023-08-03))", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!5 = !DIFile(filename: "sample.rs/@/sample.ec5bca52fb03c4de-cgu.0", directory: "/Users/rkrsn")
!6 = distinct !DISubprogram(name: "__rust_begin_short_backtrace<fn(), ()>", linkageName: "_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17he9366b6ac088aeb7E", scope: !8, file: !7, line: 131, type: !11, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !12, retainedNodes: !12)
!7 = !DIFile(filename: "/rustc/eb26296b556cef10fb713a38f3d16b9886080f26/library/std/src/sys_common/backtrace.rs", directory: "", checksumkind: CSK_MD5, checksum: "0553836ccb1e2c5bcd0b50f9a33399f2")
!8 = !DINamespace(name: "backtrace", scope: !9)
!9 = !DINamespace(name: "sys_common", scope: !10)
!10 = !DINamespace(name: "std", scope: null)
!11 = !DISubroutineType(types: !12)
!12 = !{}
!13 = !DILocation(line: 250, column: 5, scope: !14, inlinedAt: !20)
!14 = distinct !DISubprogram(name: "call_once<fn(), ()>", linkageName: "_ZN4core3ops8function6FnOnce9call_once17h8fd3b3a0743e735eE", scope: !16, file: !15, line: 250, type: !11, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !12, retainedNodes: !12)
!15 = !DIFile(filename: "/rustc/eb26296b556cef10fb713a38f3d16b9886080f26/library/core/src/ops/function.rs", directory: "", checksumkind: CSK_MD5, checksum: "cfb73adf0f4bb6df3856d6eaf613e707")
!16 = !DINamespace(name: "FnOnce", scope: !17)
!17 = !DINamespace(name: "function", scope: !18)
!18 = !DINamespace(name: "ops", scope: !19)
!19 = !DINamespace(name: "core", scope: null)
!20 = distinct !DILocation(line: 135, column: 18, scope: !6)
!21 = !DILocation(line: 293, column: 5, scope: !22, inlinedAt: !25)
!22 = distinct !DISubprogram(name: "black_box<()>", linkageName: "_ZN4core4hint9black_box17he16ce30a99e4535eE", scope: !24, file: !23, line: 292, type: !11, scopeLine: 292, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !12, retainedNodes: !12)
!23 = !DIFile(filename: "/rustc/eb26296b556cef10fb713a38f3d16b9886080f26/library/core/src/hint.rs", directory: "", checksumkind: CSK_MD5, checksum: "abfb30215b829e2044a72c49db9551bc")
!24 = !DINamespace(name: "hint", scope: !19)
!25 = !DILocation(line: 138, column: 5, scope: !26)
!26 = distinct !DILexicalBlock(scope: !6, file: !7, line: 135, column: 5)
!27 = !{i32 1632775}
!28 = !DILocation(line: 141, column: 2, scope: !6)
!29 = distinct !DISubprogram(name: "lang_start<()>", linkageName: "_ZN3std2rt10lang_start17hab9096644dcd0a25E", scope: !31, file: !30, line: 159, type: !11, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !12, retainedNodes: !12)
!30 = !DIFile(filename: "/rustc/eb26296b556cef10fb713a38f3d16b9886080f26/library/std/src/rt.rs", directory: "", checksumkind: CSK_MD5, checksum: "cc84fb732e98226bd431c2a38372d049")
!31 = !DINamespace(name: "rt", scope: !10)
!32 = !DILocation(line: 166, column: 10, scope: !29)
!33 = !DILocation(line: 165, column: 17, scope: !29)
!34 = !DILocation(line: 170, column: 6, scope: !29)
!35 = !DILocation(line: 172, column: 2, scope: !29)
!36 = distinct !DISubprogram(name: "{closure#0}<()>", linkageName: "_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h7f27655f9316ca72E", scope: !37, file: !30, line: 166, type: !11, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !12, retainedNodes: !12)
!37 = !DINamespace(name: "lang_start", scope: !31)
!38 = !DILocation(line: 166, column: 77, scope: !36)
!39 = !DILocation(line: 166, column: 18, scope: !36)
!40 = !DILocation(line: 166, column: 100, scope: !36)
!41 = distinct !DISubprogram(name: "call_once<std::rt::lang_start::{closure_env#0}<()>, ()>", linkageName: "_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17he19b05988614424aE", scope: !16, file: !15, line: 250, type: !11, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !12, retainedNodes: !12)
!42 = !DILocation(line: 250, column: 5, scope: !41)
!43 = !DILocation(line: 166, column: 18, scope: !36, inlinedAt: !44)
!44 = distinct !DILocation(line: 250, column: 5, scope: !45, inlinedAt: !46)
!45 = distinct !DISubprogram(name: "call_once<std::rt::lang_start::{closure_env#0}<()>, ()>", linkageName: "_ZN4core3ops8function6FnOnce9call_once17h79ec93346903dbb2E", scope: !16, file: !15, line: 250, type: !11, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !12, retainedNodes: !12)
!46 = distinct !DILocation(line: 250, column: 5, scope: !41)
!47 = !{!48}
!48 = distinct !{!48, !49, !"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h7f27655f9316ca72E: %_1"}
!49 = distinct !{!49, !"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h7f27655f9316ca72E"}
!50 = distinct !DISubprogram(name: "drop_in_place<std::rt::lang_start::{closure_env#0}<()>>", linkageName: "_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h0775d7edefd15f84E", scope: !52, file: !51, line: 497, type: !11, scopeLine: 497, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !12, retainedNodes: !12)
!51 = !DIFile(filename: "/rustc/eb26296b556cef10fb713a38f3d16b9886080f26/library/core/src/ptr/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "e73cb9386378d35e1df544cb9e8dd07b")
!52 = !DINamespace(name: "ptr", scope: !19)
!53 = !DILocation(line: 497, column: 1, scope: !50)
!54 = distinct !DISubprogram(name: "main", linkageName: "_ZN6sample4main17h64bd3c7e07f9f62bE", scope: !56, file: !55, line: 1, type: !11, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized | DISPFlagMainSubprogram, unit: !4, templateParams: !12, retainedNodes: !12)
!55 = !DIFile(filename: "sample.rs", directory: "/Users/rkrsn", checksumkind: CSK_MD5, checksum: "f9db45fa76050ee27f4b48dfa5b61068")
!56 = !DINamespace(name: "sample", scope: null)
!57 = !DILocation(line: 2, column: 9, scope: !54)
!58 = !DILocation(line: 2, column: 13, scope: !54)
!59 = !DILocation(line: 7, column: 9, scope: !60)
!60 = distinct !DILexicalBlock(scope: !54, file: !55, line: 2, column: 5)
!61 = !DILocation(line: 311, column: 9, scope: !62, inlinedAt: !66)
!62 = distinct !DISubprogram(name: "new_v1", linkageName: "_ZN4core3fmt9Arguments6new_v117hcaf26154f1b44d0cE", scope: !64, file: !63, line: 307, type: !11, scopeLine: 307, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !12, retainedNodes: !12)
!63 = !DIFile(filename: "/rustc/eb26296b556cef10fb713a38f3d16b9886080f26/library/core/src/fmt/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "1a732c99c57cb2d76a548fb6f43c5e00")
!64 = !DINamespace(name: "Arguments", scope: !65)
!65 = !DINamespace(name: "fmt", scope: !19)
!66 = distinct !DILocation(line: 7, column: 9, scope: !60)
!67 = !{!68}
!68 = distinct !{!68, !69, !"_ZN4core3fmt9Arguments6new_v117hcaf26154f1b44d0cE: argument 0"}
!69 = distinct !{!69, !"_ZN4core3fmt9Arguments6new_v117hcaf26154f1b44d0cE"}
!70 = !{!71, !72}
!71 = distinct !{!71, !69, !"_ZN4core3fmt9Arguments6new_v117hcaf26154f1b44d0cE: %pieces.0"}
!72 = distinct !{!72, !69, !"_ZN4core3fmt9Arguments6new_v117hcaf26154f1b44d0cE: %args.0"}
!73 = !DILocation(line: 12, column: 9, scope: !60)
!74 = !DILocation(line: 13, column: 12, scope: !60)
!75 = !DILocation(line: 19, column: 13, scope: !60)
!76 = !DILocation(line: 301, column: 9, scope: !77, inlinedAt: !78)
!77 = distinct !DISubprogram(name: "new_const", linkageName: "_ZN4core3fmt9Arguments9new_const17h69a82618cd0a4537E", scope: !64, file: !63, line: 297, type: !11, scopeLine: 297, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !12, retainedNodes: !12)
!78 = distinct !DILocation(line: 19, column: 13, scope: !60)
!79 = !{!80}
!80 = distinct !{!80, !81, !"_ZN4core3fmt9Arguments9new_const17h69a82618cd0a4537E: argument 0"}
!81 = distinct !{!81, !"_ZN4core3fmt9Arguments9new_const17h69a82618cd0a4537E"}
!82 = !{!83}
!83 = distinct !{!83, !81, !"_ZN4core3fmt9Arguments9new_const17h69a82618cd0a4537E: %pieces.0"}
!84 = !DILocation(line: 22, column: 13, scope: !60)
!85 = !DILocation(line: 13, column: 9, scope: !60)
!86 = !DILocation(line: 14, column: 13, scope: !60)
!87 = !DILocation(line: 301, column: 9, scope: !77, inlinedAt: !88)
!88 = distinct !DILocation(line: 14, column: 13, scope: !60)
!89 = !{!90}
!90 = distinct !{!90, !91, !"_ZN4core3fmt9Arguments9new_const17h69a82618cd0a4537E: argument 0"}
!91 = distinct !{!91, !"_ZN4core3fmt9Arguments9new_const17h69a82618cd0a4537E"}
!92 = !{!93}
!93 = distinct !{!93, !91, !"_ZN4core3fmt9Arguments9new_const17h69a82618cd0a4537E: %pieces.0"}
!94 = !DILocation(line: 17, column: 18, scope: !60)
!95 = !DILocation(line: 17, column: 13, scope: !60)
!96 = !DILocation(line: 0, scope: !60)
!97 = !DILocation(line: 27, column: 5, scope: !98)
!98 = distinct !DILexicalBlock(scope: !60, file: !55, line: 12, column: 5)
!99 = !DILocation(line: 311, column: 9, scope: !62, inlinedAt: !100)
!100 = distinct !DILocation(line: 27, column: 5, scope: !98)
!101 = !{!102}
!102 = distinct !{!102, !103, !"_ZN4core3fmt9Arguments6new_v117hcaf26154f1b44d0cE: argument 0"}
!103 = distinct !{!103, !"_ZN4core3fmt9Arguments6new_v117hcaf26154f1b44d0cE"}
!104 = !{!105, !106}
!105 = distinct !{!105, !103, !"_ZN4core3fmt9Arguments6new_v117hcaf26154f1b44d0cE: %pieces.0"}
!106 = distinct !{!106, !103, !"_ZN4core3fmt9Arguments6new_v117hcaf26154f1b44d0cE: %args.0"}
!107 = !DILocation(line: 28, column: 1, scope: !60)
!108 = !DILocation(line: 28, column: 1, scope: !54)
!109 = !DILocation(line: 28, column: 2, scope: !54)
