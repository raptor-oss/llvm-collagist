; ModuleID = 'rust_sample.693c0b0b-cgu.0'
source_filename = "rust_sample.693c0b0b-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::fmt::Arguments<'_>" = type { { ptr, i64 }, { ptr, i64 }, { ptr, i64 } }

@vtable.0 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @"_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h6a97781ac9b70c01E", [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hac897c8c9ebc4055E", ptr @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hbb3122d2a30e6c17E", ptr @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hbb3122d2a30e6c17E" }>, align 8
@alloc25 = private unnamed_addr constant <{}> zeroinitializer, align 8
@alloc9 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c" is positive" }>, align 1
@alloc8 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc25, [8 x i8] zeroinitializer, ptr @alloc9, [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@alloc15 = private unnamed_addr constant <{ [43 x i8] }> <{ [43 x i8] c", and is a small number, increase ten-fold\0A" }>, align 1
@alloc16 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @alloc15, [8 x i8] c"+\00\00\00\00\00\00\00" }>, align 8
@alloc20 = private unnamed_addr constant <{ [40 x i8] }> <{ [40 x i8] c", and is a big number, halve the number\0A" }>, align 1
@alloc21 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @alloc20, [8 x i8] c"(\00\00\00\00\00\00\00" }>, align 8
@alloc27 = private unnamed_addr constant <{ [4 x i8] }> <{ [4 x i8] c" -> " }>, align 1
@alloc28 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc26 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc25, [8 x i8] zeroinitializer, ptr @alloc27, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @alloc28, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8

; std::sys_common::backtrace::__rust_begin_short_backtrace
; Function Attrs: minsize noinline optsize uwtable
define internal fastcc void @_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17hc8779663d689c1baE(ptr nocapture noundef nonnull readonly %f) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !6 {
start:
  tail call void %f(), !dbg !13
  tail call void asm sideeffect "", "~{memory}"() #6, !dbg !21, !srcloc !27
  ret void, !dbg !28
}

; std::rt::lang_start
; Function Attrs: minsize optsize uwtable
define hidden i64 @_ZN3std2rt10lang_start17hb27f6364bb083f04E(ptr noundef nonnull %main, i64 %argc, ptr %argv, i8 %sigpipe) unnamed_addr #1 !dbg !29 {
start:
  %_9 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_9), !dbg !32
  store ptr %main, ptr %_9, align 8, !dbg !32
; call std::rt::lang_start_internal
  %0 = call i64 @_ZN3std2rt19lang_start_internal17h0cdebe2c4a3b171eE(ptr noundef nonnull align 1 %_9, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @vtable.0, i64 %argc, ptr %argv, i8 %sigpipe), !dbg !33
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_9), !dbg !34
  ret i64 %0, !dbg !35
}

; std::rt::lang_start::{{closure}}
; Function Attrs: inlinehint minsize optsize uwtable
define internal i32 @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hbb3122d2a30e6c17E"(ptr noalias nocapture noundef readonly align 8 dereferenceable(8) %_1) unnamed_addr #2 !dbg !36 {
start:
  %_4 = load ptr, ptr %_1, align 8, !dbg !38, !nonnull !12, !noundef !12
; call std::sys_common::backtrace::__rust_begin_short_backtrace
  tail call fastcc void @_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17hc8779663d689c1baE(ptr noundef nonnull %_4), !dbg !39
  ret i32 0, !dbg !40
}

; core::ops::function::FnOnce::call_once{{vtable.shim}}
; Function Attrs: inlinehint minsize optsize uwtable
define internal i32 @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hac897c8c9ebc4055E"(ptr nocapture readonly %_1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !41 {
start:
  %0 = load ptr, ptr %_1, align 8, !dbg !42, !nonnull !12, !noundef !12
; call std::sys_common::backtrace::__rust_begin_short_backtrace
  tail call fastcc void @_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17hc8779663d689c1baE(ptr noundef nonnull %0), !dbg !43, !noalias !48
  ret i32 0, !dbg !42
}

; core::ptr::drop_in_place<std::rt::lang_start<()>::{{closure}}>
; Function Attrs: inlinehint minsize mustprogress nofree norecurse nosync nounwind optsize readnone willreturn uwtable
define internal void @"_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h6a97781ac9b70c01E"(ptr nocapture readnone %_1) unnamed_addr #3 !dbg !51 {
start:
  ret void, !dbg !54
}

; rust_sample::main
; Function Attrs: minsize optsize uwtable
define internal void @_ZN11rust_sample4main17h813aac181e402d98E() unnamed_addr #1 !dbg !55 {
start:
  %_77 = alloca [2 x { ptr, ptr }], align 8
  %_70 = alloca %"core::fmt::Arguments<'_>", align 8
  %_58 = alloca %"core::fmt::Arguments<'_>", align 8
  %_49 = alloca %"core::fmt::Arguments<'_>", align 8
  %big_n = alloca i32, align 4
  %_26 = alloca [1 x { ptr, ptr }], align 8
  %_19 = alloca %"core::fmt::Arguments<'_>", align 8
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n), !dbg !58
  store i32 5, ptr %n, align 4, !dbg !59
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_19), !dbg !60
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_26), !dbg !60
  store ptr %n, ptr %_26, align 8, !dbg !60
  %0 = getelementptr inbounds { ptr, ptr }, ptr %_26, i64 0, i32 1, !dbg !60
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17hfdb917858e035e4bE", ptr %0, align 8, !dbg !60
  %1 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_19, i64 0, i32 1, !dbg !62
  store ptr @alloc8, ptr %1, align 8, !dbg !62, !alias.scope !68, !noalias !71
  %2 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_19, i64 0, i32 1, i32 1, !dbg !62
  store i64 2, ptr %2, align 8, !dbg !62, !alias.scope !68, !noalias !71
  store ptr null, ptr %_19, align 8, !dbg !62, !alias.scope !68, !noalias !71
  %3 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_19, i64 0, i32 2, !dbg !62
  store ptr %_26, ptr %3, align 8, !dbg !62, !alias.scope !68, !noalias !71
  %4 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_19, i64 0, i32 2, i32 1, !dbg !62
  store i64 1, ptr %4, align 8, !dbg !62, !alias.scope !68, !noalias !71
; call std::io::stdio::_print
  call void @_ZN3std2io5stdio6_print17h18386dbf1f22a48eE(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_19), !dbg !60
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_19), !dbg !60
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_26), !dbg !60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %big_n), !dbg !74
  %_45 = load i32, ptr %n, align 4, !dbg !75
  %5 = add i32 %_45, 9, !dbg !75
  %6 = icmp ult i32 %5, 19, !dbg !75
  br i1 %6, label %bb19, label %bb22, !dbg !75

bb22:                                             ; preds = %start
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_58), !dbg !76
  %7 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_58, i64 0, i32 1, !dbg !77
  store ptr @alloc21, ptr %7, align 8, !dbg !77, !alias.scope !79, !noalias !82
  %8 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_58, i64 0, i32 1, i32 1, !dbg !77
  store i64 1, ptr %8, align 8, !dbg !77, !alias.scope !79, !noalias !82
  store ptr null, ptr %_58, align 8, !dbg !77, !alias.scope !79, !noalias !82
  %9 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_58, i64 0, i32 2, !dbg !77
  store ptr @alloc25, ptr %9, align 8, !dbg !77, !alias.scope !79, !noalias !82
  %10 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_58, i64 0, i32 2, i32 1, !dbg !77
  store i64 0, ptr %10, align 8, !dbg !77, !alias.scope !79, !noalias !82
; call std::io::stdio::_print
  call void @_ZN3std2io5stdio6_print17h18386dbf1f22a48eE(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_58), !dbg !76
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_58), !dbg !76
  %_65 = load i32, ptr %n, align 4, !dbg !85
  %11 = sdiv i32 %_65, 2, !dbg !85
  br label %bb26, !dbg !86

bb19:                                             ; preds = %start
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_49), !dbg !87
  %12 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_49, i64 0, i32 1, !dbg !88
  store ptr @alloc16, ptr %12, align 8, !dbg !88, !alias.scope !90, !noalias !93
  %13 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_49, i64 0, i32 1, i32 1, !dbg !88
  store i64 1, ptr %13, align 8, !dbg !88, !alias.scope !90, !noalias !93
  store ptr null, ptr %_49, align 8, !dbg !88, !alias.scope !90, !noalias !93
  %14 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_49, i64 0, i32 2, !dbg !88
  store ptr @alloc25, ptr %14, align 8, !dbg !88, !alias.scope !90, !noalias !93
  %15 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_49, i64 0, i32 2, i32 1, !dbg !88
  store i64 0, ptr %15, align 8, !dbg !88, !alias.scope !90, !noalias !93
; call std::io::stdio::_print
  call void @_ZN3std2io5stdio6_print17h18386dbf1f22a48eE(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_49), !dbg !87
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_49), !dbg !87
  %_56 = load i32, ptr %n, align 4, !dbg !96
  %16 = mul i32 %_56, 10, !dbg !97
  br label %bb26, !dbg !86

bb26:                                             ; preds = %bb22, %bb19
  %storemerge = phi i32 [ %11, %bb22 ], [ %16, %bb19 ], !dbg !98
  store i32 %storemerge, ptr %big_n, align 4, !dbg !98
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_70), !dbg !99
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %_77), !dbg !99
  store ptr %n, ptr %_77, align 8, !dbg !99
  %17 = getelementptr inbounds { ptr, ptr }, ptr %_77, i64 0, i32 1, !dbg !99
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17hfdb917858e035e4bE", ptr %17, align 8, !dbg !99
  %18 = getelementptr inbounds [2 x { ptr, ptr }], ptr %_77, i64 0, i64 1, !dbg !99
  store ptr %big_n, ptr %18, align 8, !dbg !99
  %19 = getelementptr inbounds [2 x { ptr, ptr }], ptr %_77, i64 0, i64 1, i32 1, !dbg !99
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17hfdb917858e035e4bE", ptr %19, align 8, !dbg !99
  %20 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_70, i64 0, i32 1, !dbg !101
  store ptr @alloc26, ptr %20, align 8, !dbg !101, !alias.scope !103, !noalias !106
  %21 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_70, i64 0, i32 1, i32 1, !dbg !101
  store i64 3, ptr %21, align 8, !dbg !101, !alias.scope !103, !noalias !106
  store ptr null, ptr %_70, align 8, !dbg !101, !alias.scope !103, !noalias !106
  %22 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_70, i64 0, i32 2, !dbg !101
  store ptr %_77, ptr %22, align 8, !dbg !101, !alias.scope !103, !noalias !106
  %23 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_70, i64 0, i32 2, i32 1, !dbg !101
  store i64 2, ptr %23, align 8, !dbg !101, !alias.scope !103, !noalias !106
; call std::io::stdio::_print
  call void @_ZN3std2io5stdio6_print17h18386dbf1f22a48eE(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_70), !dbg !99
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_70), !dbg !99
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %_77), !dbg !99
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %big_n), !dbg !109
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n), !dbg !110
  ret void, !dbg !111
}

; Function Attrs: minsize optsize uwtable
declare noundef i32 @rust_eh_personality(i32, i32 noundef, i64, ptr, ptr) unnamed_addr #1

; std::rt::lang_start_internal
; Function Attrs: minsize optsize uwtable
declare i64 @_ZN3std2rt19lang_start_internal17h0cdebe2c4a3b171eE(ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 dereferenceable(24), i64, ptr, i8) unnamed_addr #1

; core::fmt::num::imp::<impl core::fmt::Display for i32>::fmt
; Function Attrs: minsize optsize uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17hfdb917858e035e4bE"(ptr noalias noundef readonly align 4 dereferenceable(4), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #1

; std::io::stdio::_print
; Function Attrs: minsize optsize uwtable
declare void @_ZN3std2io5stdio6_print17h18386dbf1f22a48eE(ptr noalias nocapture noundef readonly dereferenceable(48)) unnamed_addr #1

define i32 @main(i32 %0, ptr %1) unnamed_addr #4 {
top:
  %2 = sext i32 %0 to i64
; call std::rt::lang_start
  %3 = tail call i64 @_ZN3std2rt10lang_start17hb27f6364bb083f04E(ptr @_ZN11rust_sample4main17h813aac181e402d98E, i64 %2, ptr %1, i8 0)
  %4 = trunc i64 %3 to i32
  ret i32 %4
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

attributes #0 = { minsize noinline optsize uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" "target-features"="+v8a" }
attributes #1 = { minsize optsize uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" "target-features"="+v8a" }
attributes #2 = { inlinehint minsize optsize uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" "target-features"="+v8a" }
attributes #3 = { inlinehint minsize mustprogress nofree norecurse nosync nounwind optsize readnone willreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" "target-features"="+v8a" }
attributes #4 = { "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #5 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.dbg.cu = !{!4}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 2, !"Dwarf Version", i32 2}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !5, producer: "clang LLVM (rustc version 1.67.0 (fc594f156 2023-01-24))", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!5 = !DIFile(filename: "testdata/rust_sample.rs/@/rust_sample.693c0b0b-cgu.0", directory: "/Users/rkrsn/workspace/raptor-oss/llvm-source-extractor")
!6 = distinct !DISubprogram(name: "__rust_begin_short_backtrace<fn(), ()>", linkageName: "_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17hc8779663d689c1baE", scope: !8, file: !7, line: 117, type: !11, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !12, retainedNodes: !12)
!7 = !DIFile(filename: "/rustc/fc594f15669680fa70d255faec3ca3fb507c3405/library/std/src/sys_common/backtrace.rs", directory: "", checksumkind: CSK_MD5, checksum: "749a687b5240cb2a44a8a1da064233e6")
!8 = !DINamespace(name: "backtrace", scope: !9)
!9 = !DINamespace(name: "sys_common", scope: !10)
!10 = !DINamespace(name: "std", scope: null)
!11 = !DISubroutineType(types: !12)
!12 = !{}
!13 = !DILocation(line: 507, column: 5, scope: !14, inlinedAt: !20)
!14 = distinct !DISubprogram(name: "call_once<fn(), ()>", linkageName: "_ZN4core3ops8function6FnOnce9call_once17h9e196b8efe8e9529E", scope: !16, file: !15, line: 507, type: !11, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !12, retainedNodes: !12)
!15 = !DIFile(filename: "/rustc/fc594f15669680fa70d255faec3ca3fb507c3405/library/core/src/ops/function.rs", directory: "", checksumkind: CSK_MD5, checksum: "f0ba880b574b8919159783df7a5362ad")
!16 = !DINamespace(name: "FnOnce", scope: !17)
!17 = !DINamespace(name: "function", scope: !18)
!18 = !DINamespace(name: "ops", scope: !19)
!19 = !DINamespace(name: "core", scope: null)
!20 = distinct !DILocation(line: 121, column: 18, scope: !6)
!21 = !DILocation(line: 226, column: 5, scope: !22, inlinedAt: !25)
!22 = distinct !DISubprogram(name: "black_box<()>", linkageName: "_ZN4core4hint9black_box17hb8ee18d9ab26d934E", scope: !24, file: !23, line: 225, type: !11, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !12, retainedNodes: !12)
!23 = !DIFile(filename: "/rustc/fc594f15669680fa70d255faec3ca3fb507c3405/library/core/src/hint.rs", directory: "", checksumkind: CSK_MD5, checksum: "919d4dd3c27345ba2df03215cc05853a")
!24 = !DINamespace(name: "hint", scope: !19)
!25 = !DILocation(line: 124, column: 5, scope: !26)
!26 = distinct !DILexicalBlock(scope: !6, file: !7, line: 121, column: 5)
!27 = !{i32 2009325}
!28 = !DILocation(line: 127, column: 2, scope: !6)
!29 = distinct !DISubprogram(name: "lang_start<()>", linkageName: "_ZN3std2rt10lang_start17hb27f6364bb083f04E", scope: !31, file: !30, line: 159, type: !11, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !12, retainedNodes: !12)
!30 = !DIFile(filename: "/rustc/fc594f15669680fa70d255faec3ca3fb507c3405/library/std/src/rt.rs", directory: "", checksumkind: CSK_MD5, checksum: "fb00c1de4486ead9bf270b30f784714a")
!31 = !DINamespace(name: "rt", scope: !10)
!32 = !DILocation(line: 166, column: 10, scope: !29)
!33 = !DILocation(line: 165, column: 17, scope: !29)
!34 = !DILocation(line: 170, column: 6, scope: !29)
!35 = !DILocation(line: 172, column: 2, scope: !29)
!36 = distinct !DISubprogram(name: "{closure#0}<()>", linkageName: "_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hbb3122d2a30e6c17E", scope: !37, file: !30, line: 166, type: !11, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !12, retainedNodes: !12)
!37 = !DINamespace(name: "lang_start", scope: !31)
!38 = !DILocation(line: 166, column: 77, scope: !36)
!39 = !DILocation(line: 166, column: 18, scope: !36)
!40 = !DILocation(line: 166, column: 100, scope: !36)
!41 = distinct !DISubprogram(name: "call_once<std::rt::lang_start::{closure_env#0}<()>, ()>", linkageName: "_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hac897c8c9ebc4055E", scope: !16, file: !15, line: 507, type: !11, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !12, retainedNodes: !12)
!42 = !DILocation(line: 507, column: 5, scope: !41)
!43 = !DILocation(line: 166, column: 18, scope: !36, inlinedAt: !44)
!44 = distinct !DILocation(line: 507, column: 5, scope: !45, inlinedAt: !47)
!45 = distinct !DISubprogram(name: "call_once<std::rt::lang_start::{closure_env#0}<()>, ()>", linkageName: "_ZN4core3ops8function6FnOnce9call_once17hefcfb7ecd4b0697dE", scope: !16, file: !15, line: 507, type: !46, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !12, retainedNodes: !12)
!46 = !DISubroutineType(cc: DW_CC_nocall, types: !12)
!47 = distinct !DILocation(line: 507, column: 5, scope: !41)
!48 = !{!49}
!49 = distinct !{!49, !50, !"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hbb3122d2a30e6c17E: %_1"}
!50 = distinct !{!50, !"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hbb3122d2a30e6c17E"}
!51 = distinct !DISubprogram(name: "drop_in_place<std::rt::lang_start::{closure_env#0}<()>>", linkageName: "_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h6a97781ac9b70c01E", scope: !53, file: !52, line: 490, type: !11, scopeLine: 490, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !12, retainedNodes: !12)
!52 = !DIFile(filename: "/rustc/fc594f15669680fa70d255faec3ca3fb507c3405/library/core/src/ptr/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "03d618eba794040d58ab547e481b665d")
!53 = !DINamespace(name: "ptr", scope: !19)
!54 = !DILocation(line: 490, column: 1, scope: !51)
!55 = distinct !DISubprogram(name: "main", linkageName: "_ZN11rust_sample4main17h813aac181e402d98E", scope: !57, file: !56, line: 1, type: !11, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized | DISPFlagMainSubprogram, unit: !4, templateParams: !12, retainedNodes: !12)
!56 = !DIFile(filename: "testdata/rust_sample.rs", directory: "/Users/rkrsn/workspace/raptor-oss/llvm-source-extractor", checksumkind: CSK_MD5, checksum: "f9db45fa76050ee27f4b48dfa5b61068")
!57 = !DINamespace(name: "rust_sample", scope: null)
!58 = !DILocation(line: 2, column: 9, scope: !55)
!59 = !DILocation(line: 2, column: 13, scope: !55)
!60 = !DILocation(line: 7, column: 9, scope: !61)
!61 = distinct !DILexicalBlock(scope: !55, file: !56, line: 2, column: 5)
!62 = !DILocation(line: 398, column: 9, scope: !63, inlinedAt: !67)
!63 = distinct !DISubprogram(name: "new_v1", linkageName: "_ZN4core3fmt9Arguments6new_v117hd00b16e027654a06E", scope: !65, file: !64, line: 394, type: !11, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !12, retainedNodes: !12)
!64 = !DIFile(filename: "/rustc/fc594f15669680fa70d255faec3ca3fb507c3405/library/core/src/fmt/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "e4261010495522f3bab2fc5e9e07abf4")
!65 = !DINamespace(name: "Arguments", scope: !66)
!66 = !DINamespace(name: "fmt", scope: !19)
!67 = distinct !DILocation(line: 7, column: 9, scope: !61)
!68 = !{!69}
!69 = distinct !{!69, !70, !"_ZN4core3fmt9Arguments6new_v117hd00b16e027654a06E: argument 0"}
!70 = distinct !{!70, !"_ZN4core3fmt9Arguments6new_v117hd00b16e027654a06E"}
!71 = !{!72, !73}
!72 = distinct !{!72, !70, !"_ZN4core3fmt9Arguments6new_v117hd00b16e027654a06E: %pieces.0"}
!73 = distinct !{!73, !70, !"_ZN4core3fmt9Arguments6new_v117hd00b16e027654a06E: %args.0"}
!74 = !DILocation(line: 12, column: 9, scope: !61)
!75 = !DILocation(line: 13, column: 12, scope: !61)
!76 = !DILocation(line: 19, column: 13, scope: !61)
!77 = !DILocation(line: 398, column: 9, scope: !63, inlinedAt: !78)
!78 = distinct !DILocation(line: 19, column: 13, scope: !61)
!79 = !{!80}
!80 = distinct !{!80, !81, !"_ZN4core3fmt9Arguments6new_v117hd00b16e027654a06E: argument 0"}
!81 = distinct !{!81, !"_ZN4core3fmt9Arguments6new_v117hd00b16e027654a06E"}
!82 = !{!83, !84}
!83 = distinct !{!83, !81, !"_ZN4core3fmt9Arguments6new_v117hd00b16e027654a06E: %pieces.0"}
!84 = distinct !{!84, !81, !"_ZN4core3fmt9Arguments6new_v117hd00b16e027654a06E: %args.0"}
!85 = !DILocation(line: 22, column: 13, scope: !61)
!86 = !DILocation(line: 13, column: 9, scope: !61)
!87 = !DILocation(line: 14, column: 13, scope: !61)
!88 = !DILocation(line: 398, column: 9, scope: !63, inlinedAt: !89)
!89 = distinct !DILocation(line: 14, column: 13, scope: !61)
!90 = !{!91}
!91 = distinct !{!91, !92, !"_ZN4core3fmt9Arguments6new_v117hd00b16e027654a06E: argument 0"}
!92 = distinct !{!92, !"_ZN4core3fmt9Arguments6new_v117hd00b16e027654a06E"}
!93 = !{!94, !95}
!94 = distinct !{!94, !92, !"_ZN4core3fmt9Arguments6new_v117hd00b16e027654a06E: %pieces.0"}
!95 = distinct !{!95, !92, !"_ZN4core3fmt9Arguments6new_v117hd00b16e027654a06E: %args.0"}
!96 = !DILocation(line: 17, column: 18, scope: !61)
!97 = !DILocation(line: 17, column: 13, scope: !61)
!98 = !DILocation(line: 0, scope: !61)
!99 = !DILocation(line: 27, column: 5, scope: !100)
!100 = distinct !DILexicalBlock(scope: !61, file: !56, line: 12, column: 5)
!101 = !DILocation(line: 398, column: 9, scope: !63, inlinedAt: !102)
!102 = distinct !DILocation(line: 27, column: 5, scope: !100)
!103 = !{!104}
!104 = distinct !{!104, !105, !"_ZN4core3fmt9Arguments6new_v117hd00b16e027654a06E: argument 0"}
!105 = distinct !{!105, !"_ZN4core3fmt9Arguments6new_v117hd00b16e027654a06E"}
!106 = !{!107, !108}
!107 = distinct !{!107, !105, !"_ZN4core3fmt9Arguments6new_v117hd00b16e027654a06E: %pieces.0"}
!108 = distinct !{!108, !105, !"_ZN4core3fmt9Arguments6new_v117hd00b16e027654a06E: %args.0"}
!109 = !DILocation(line: 28, column: 1, scope: !61)
!110 = !DILocation(line: 28, column: 1, scope: !55)
!111 = !DILocation(line: 28, column: 2, scope: !55)
