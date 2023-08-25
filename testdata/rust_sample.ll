; ModuleID = 'rust_sample.a5b4095d-cgu.0'
source_filename = "rust_sample.a5b4095d-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-apple-macosx10.7.0"

%"std::fmt::Arguments" = type { [0 x i64], { [0 x { [0 x i8]*, i64 }]*, i64 }, [0 x i64], { i64*, i64 }, [0 x i64], { [0 x { i8*, i64* }]*, i64 }, [0 x i64] }
%"unwind::libunwind::_Unwind_Exception" = type { [0 x i64], i64, [0 x i64], void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [0 x i64], [2 x i64], [0 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }
%"std::fmt::Formatter" = type { [0 x i64], { i64, i64 }, [0 x i64], { i64, i64 }, [0 x i64], { {}*, [3 x i64]* }, [0 x i32], i32, [0 x i32], i32, [0 x i8], i8, [7 x i8] }

@vtable.0 = private unnamed_addr constant <{ i8*, [16 x i8], i8*, i8*, i8*, [0 x i8] }> <{ i8* bitcast (void (i64**)* @"_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h62911d387742022bE" to i8*), [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i32 (i64**)* @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h479c629bd12cb7daE" to i8*), i8* bitcast (i32 (i64**)* @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h479c629bd12cb7daE" to i8*), i8* bitcast (i32 (i64**)* @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hc86d38dc52479c72E" to i8*), [0 x i8] zeroinitializer }>, align 8
@alloc28 = private unnamed_addr constant <{ [0 x i8] }> zeroinitializer, align 8
@alloc10 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c" is positive" }>, align 1
@alloc9 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [0 x i8] }>, <{ [0 x i8] }>* @alloc28, i32 0, i32 0, i32 0), [8 x i8] zeroinitializer, i8* getelementptr inbounds (<{ [12 x i8] }>, <{ [12 x i8] }>* @alloc10, i32 0, i32 0, i32 0), [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@alloc18 = private unnamed_addr constant <{ [43 x i8] }> <{ [43 x i8] c", and is a small number, increase ten-fold\0A" }>, align 1
@alloc19 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [43 x i8] }>, <{ [43 x i8] }>* @alloc18, i32 0, i32 0, i32 0), [8 x i8] c"+\00\00\00\00\00\00\00" }>, align 8
@alloc23 = private unnamed_addr constant <{ [40 x i8] }> <{ [40 x i8] c", and is a big number, halve the number\0A" }>, align 1
@alloc24 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [40 x i8] }>, <{ [40 x i8] }>* @alloc23, i32 0, i32 0, i32 0), [8 x i8] c"(\00\00\00\00\00\00\00" }>, align 8
@alloc30 = private unnamed_addr constant <{ [4 x i8] }> <{ [4 x i8] c" -> " }>, align 1
@alloc31 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc29 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [0 x i8] }>, <{ [0 x i8] }>* @alloc28, i32 0, i32 0, i32 0), [8 x i8] zeroinitializer, i8* getelementptr inbounds (<{ [4 x i8] }>, <{ [4 x i8] }>* @alloc30, i32 0, i32 0, i32 0), [8 x i8] c"\04\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc31, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8

; std::sys_common::backtrace::__rust_begin_short_backtrace
; Function Attrs: minsize noinline optsize uwtable
define internal fastcc void @_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17hda01b5440180bfadE(void ()* nocapture nonnull %f) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !7 {
start:
  %dummy.i = alloca {}, align 1
  tail call void %f(), !dbg !13
  %0 = bitcast {}* %dummy.i to i8*, !dbg !21
  call void @llvm.lifetime.start.p0i8(i64 0, i8* nonnull %0), !dbg !21
  call void asm sideeffect "", "r,~{memory}"({}* nonnull %dummy.i) #8, !dbg !21, !srcloc !26
  call void @llvm.lifetime.end.p0i8(i64 0, i8* nonnull %0), !dbg !27
  ret void, !dbg !28
}

; std::rt::lang_start
; Function Attrs: minsize optsize uwtable
define hidden i64 @_ZN3std2rt10lang_start17h59d1a8dff2fd22d9E(void ()* nonnull %main, i64 %argc, i8** %argv) unnamed_addr #1 !dbg !29 {
start:
  %_8 = alloca i64*, align 8
  %0 = bitcast i64** %_8 to i8*, !dbg !32
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0), !dbg !32
  %1 = bitcast i64** %_8 to void ()**, !dbg !32
  store void ()* %main, void ()** %1, align 8, !dbg !32
  %_5.0 = bitcast i64** %_8 to {}*, !dbg !33
; call std::rt::lang_start_internal
  %_4 = call i64 @_ZN3std2rt19lang_start_internal17h103433e957e14c30E({}* nonnull align 1 %_5.0, [3 x i64]* noalias readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8], i8*, i8*, i8*, [0 x i8] }>* @vtable.0 to [3 x i64]*), i64 %argc, i8** %argv), !dbg !34
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0), !dbg !35
  ret i64 %_4, !dbg !36
}

; std::rt::lang_start::{{closure}}
; Function Attrs: inlinehint minsize optsize uwtable
define internal i32 @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h479c629bd12cb7daE"(i64** noalias nocapture readonly align 8 dereferenceable(8) %_1) unnamed_addr #2 !dbg !37 {
start:
  %0 = bitcast i64** %_1 to void ()**, !dbg !39
  %_3 = load void ()*, void ()** %0, align 8, !dbg !39, !nonnull !6
; call std::sys_common::backtrace::__rust_begin_short_backtrace
  tail call fastcc void @_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17hda01b5440180bfadE(void ()* nonnull %_3), !dbg !40
  ret i32 0, !dbg !41
}

; core::ops::function::FnOnce::call_once{{vtable.shim}}
; Function Attrs: inlinehint minsize optsize uwtable
define internal i32 @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hc86d38dc52479c72E"(i64** nocapture readonly %_1) unnamed_addr #2 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !42 {
start:
  %0 = bitcast i64** %_1 to void ()**, !dbg !43
  %1 = load void ()*, void ()** %0, align 8, !dbg !43, !nonnull !6
; call std::sys_common::backtrace::__rust_begin_short_backtrace
  tail call fastcc void @_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17hda01b5440180bfadE(void ()* nonnull %1), !dbg !44, !noalias !48
  ret i32 0, !dbg !43
}

; core::ptr::drop_in_place<std::rt::lang_start<()>::{{closure}}>
; Function Attrs: inlinehint minsize norecurse nounwind optsize readnone uwtable willreturn
define internal void @"_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h62911d387742022bE"(i64** nocapture %_1) unnamed_addr #3 !dbg !51 {
start:
  ret void, !dbg !54
}

; rust_sample::main
; Function Attrs: minsize optsize uwtable
define internal void @_ZN11rust_sample4main17h9cff0f0cc5fcb4eeE() unnamed_addr #1 !dbg !55 {
start:
  %_86 = alloca [2 x { i8*, i64* }], align 8
  %_79 = alloca %"std::fmt::Arguments", align 8
  %_67 = alloca %"std::fmt::Arguments", align 8
  %_58 = alloca %"std::fmt::Arguments", align 8
  %big_n = alloca i32, align 4
  %_29 = alloca [1 x { i8*, i64* }], align 8
  %_22 = alloca %"std::fmt::Arguments", align 8
  %n = alloca i32, align 4
  %0 = bitcast i32* %n to i8*, !dbg !58
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0), !dbg !58
  store i32 5, i32* %n, align 4, !dbg !59
  %1 = bitcast %"std::fmt::Arguments"* %_22 to i8*, !dbg !60
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %1), !dbg !60
  %2 = bitcast [1 x { i8*, i64* }]* %_29 to i8*, !dbg !60
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2), !dbg !60
  %3 = bitcast [1 x { i8*, i64* }]* %_29 to i32**, !dbg !60
  store i32* %n, i32** %3, align 8, !dbg !60
  %4 = getelementptr inbounds [1 x { i8*, i64* }], [1 x { i8*, i64* }]* %_29, i64 0, i64 0, i32 1, !dbg !60
  store i64* bitcast (i1 (i32*, %"std::fmt::Formatter"*)* @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h102212dec5c19255E" to i64*), i64** %4, align 8, !dbg !60
  %5 = bitcast %"std::fmt::Arguments"* %_22 to [0 x { [0 x i8]*, i64 }]**, !dbg !61
  store [0 x { [0 x i8]*, i64 }]* bitcast (<{ i8*, [8 x i8], i8*, [8 x i8] }>* @alloc9 to [0 x { [0 x i8]*, i64 }]*), [0 x { [0 x i8]*, i64 }]** %5, align 8, !dbg !61, !alias.scope !67, !noalias !70
  %6 = getelementptr inbounds %"std::fmt::Arguments", %"std::fmt::Arguments"* %_22, i64 0, i32 1, i32 1, !dbg !61
  store i64 2, i64* %6, align 8, !dbg !61, !alias.scope !67, !noalias !70
  %7 = getelementptr inbounds %"std::fmt::Arguments", %"std::fmt::Arguments"* %_22, i64 0, i32 3, i32 0, !dbg !61
  %8 = getelementptr inbounds %"std::fmt::Arguments", %"std::fmt::Arguments"* %_22, i64 0, i32 5, i32 0, !dbg !61
  %9 = bitcast i64** %7 to i8*, !dbg !61
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false) #8, !dbg !61, !alias.scope !67, !noalias !70
  %10 = bitcast [0 x { i8*, i64* }]** %8 to [1 x { i8*, i64* }]**, !dbg !61
  store [1 x { i8*, i64* }]* %_29, [1 x { i8*, i64* }]** %10, align 8, !dbg !61, !alias.scope !67, !noalias !70
  %11 = getelementptr inbounds %"std::fmt::Arguments", %"std::fmt::Arguments"* %_22, i64 0, i32 5, i32 1, !dbg !61
  store i64 1, i64* %11, align 8, !dbg !61, !alias.scope !67, !noalias !70
; call std::io::stdio::_print
  call void @_ZN3std2io5stdio6_print17haa76c613034f91daE(%"std::fmt::Arguments"* noalias nocapture nonnull dereferenceable(48) %_22), !dbg !60
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %1), !dbg !60
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2), !dbg !60
  %12 = bitcast i32* %big_n to i8*, !dbg !73
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12), !dbg !73
  %_54 = load i32, i32* %n, align 4, !dbg !74
  %_54.off = add i32 %_54, 9, !dbg !74
  %13 = icmp ult i32 %_54.off, 19, !dbg !74
  br i1 %13, label %bb19, label %bb20, !dbg !75

bb20:                                             ; preds = %start
  %14 = bitcast %"std::fmt::Arguments"* %_67 to i8*, !dbg !76
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %14), !dbg !76
  %15 = bitcast %"std::fmt::Arguments"* %_67 to [0 x { [0 x i8]*, i64 }]**, !dbg !77
  store [0 x { [0 x i8]*, i64 }]* bitcast (<{ i8*, [8 x i8] }>* @alloc24 to [0 x { [0 x i8]*, i64 }]*), [0 x { [0 x i8]*, i64 }]** %15, align 8, !dbg !77, !alias.scope !79, !noalias !82
  %16 = getelementptr inbounds %"std::fmt::Arguments", %"std::fmt::Arguments"* %_67, i64 0, i32 1, i32 1, !dbg !77
  store i64 1, i64* %16, align 8, !dbg !77, !alias.scope !79, !noalias !82
  %17 = getelementptr inbounds %"std::fmt::Arguments", %"std::fmt::Arguments"* %_67, i64 0, i32 3, i32 0, !dbg !77
  %18 = getelementptr inbounds %"std::fmt::Arguments", %"std::fmt::Arguments"* %_67, i64 0, i32 5, i32 0, !dbg !77
  %19 = bitcast i64** %17 to i8*, !dbg !77
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %19, i8 0, i64 16, i1 false) #8, !dbg !77, !alias.scope !79, !noalias !82
  store [0 x { i8*, i64* }]* bitcast (<{ [0 x i8] }>* @alloc28 to [0 x { i8*, i64* }]*), [0 x { i8*, i64* }]** %18, align 8, !dbg !77, !alias.scope !79, !noalias !82
  %20 = getelementptr inbounds %"std::fmt::Arguments", %"std::fmt::Arguments"* %_67, i64 0, i32 5, i32 1, !dbg !77
  store i64 0, i64* %20, align 8, !dbg !77, !alias.scope !79, !noalias !82
; call std::io::stdio::_print
  call void @_ZN3std2io5stdio6_print17haa76c613034f91daE(%"std::fmt::Arguments"* noalias nocapture nonnull dereferenceable(48) %_67), !dbg !76
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %14), !dbg !76
  %_74 = load i32, i32* %n, align 4, !dbg !85
  %21 = sdiv i32 %_74, 2, !dbg !85
  br label %bb26, !dbg !75

bb19:                                             ; preds = %start
  %22 = bitcast %"std::fmt::Arguments"* %_58 to i8*, !dbg !86
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %22), !dbg !86
  %23 = bitcast %"std::fmt::Arguments"* %_58 to [0 x { [0 x i8]*, i64 }]**, !dbg !87
  store [0 x { [0 x i8]*, i64 }]* bitcast (<{ i8*, [8 x i8] }>* @alloc19 to [0 x { [0 x i8]*, i64 }]*), [0 x { [0 x i8]*, i64 }]** %23, align 8, !dbg !87, !alias.scope !89, !noalias !92
  %24 = getelementptr inbounds %"std::fmt::Arguments", %"std::fmt::Arguments"* %_58, i64 0, i32 1, i32 1, !dbg !87
  store i64 1, i64* %24, align 8, !dbg !87, !alias.scope !89, !noalias !92
  %25 = getelementptr inbounds %"std::fmt::Arguments", %"std::fmt::Arguments"* %_58, i64 0, i32 3, i32 0, !dbg !87
  %26 = getelementptr inbounds %"std::fmt::Arguments", %"std::fmt::Arguments"* %_58, i64 0, i32 5, i32 0, !dbg !87
  %27 = bitcast i64** %25 to i8*, !dbg !87
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %27, i8 0, i64 16, i1 false) #8, !dbg !87, !alias.scope !89, !noalias !92
  store [0 x { i8*, i64* }]* bitcast (<{ [0 x i8] }>* @alloc28 to [0 x { i8*, i64* }]*), [0 x { i8*, i64* }]** %26, align 8, !dbg !87, !alias.scope !89, !noalias !92
  %28 = getelementptr inbounds %"std::fmt::Arguments", %"std::fmt::Arguments"* %_58, i64 0, i32 5, i32 1, !dbg !87
  store i64 0, i64* %28, align 8, !dbg !87, !alias.scope !89, !noalias !92
; call std::io::stdio::_print
  call void @_ZN3std2io5stdio6_print17haa76c613034f91daE(%"std::fmt::Arguments"* noalias nocapture nonnull dereferenceable(48) %_58), !dbg !86
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %22), !dbg !86
  %_65 = load i32, i32* %n, align 4, !dbg !95
  %29 = mul i32 %_65, 10, !dbg !96
  br label %bb26, !dbg !75

bb26:                                             ; preds = %bb20, %bb19
  %storemerge = phi i32 [ %21, %bb20 ], [ %29, %bb19 ], !dbg !97
  store i32 %storemerge, i32* %big_n, align 4, !dbg !97
  %30 = bitcast %"std::fmt::Arguments"* %_79 to i8*, !dbg !98
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %30), !dbg !98
  %31 = bitcast [2 x { i8*, i64* }]* %_86 to i8*, !dbg !98
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %31), !dbg !98
  %32 = bitcast [2 x { i8*, i64* }]* %_86 to i32**, !dbg !98
  store i32* %n, i32** %32, align 8, !dbg !98
  %33 = getelementptr inbounds [2 x { i8*, i64* }], [2 x { i8*, i64* }]* %_86, i64 0, i64 0, i32 1, !dbg !98
  store i64* bitcast (i1 (i32*, %"std::fmt::Formatter"*)* @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h102212dec5c19255E" to i64*), i64** %33, align 8, !dbg !98
  %34 = getelementptr inbounds [2 x { i8*, i64* }], [2 x { i8*, i64* }]* %_86, i64 0, i64 1, i32 0, !dbg !98
  %35 = bitcast i8** %34 to i32**, !dbg !98
  store i32* %big_n, i32** %35, align 8, !dbg !98
  %36 = getelementptr inbounds [2 x { i8*, i64* }], [2 x { i8*, i64* }]* %_86, i64 0, i64 1, i32 1, !dbg !98
  store i64* bitcast (i1 (i32*, %"std::fmt::Formatter"*)* @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h102212dec5c19255E" to i64*), i64** %36, align 8, !dbg !98
  %37 = bitcast %"std::fmt::Arguments"* %_79 to [0 x { [0 x i8]*, i64 }]**, !dbg !99
  store [0 x { [0 x i8]*, i64 }]* bitcast (<{ i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8] }>* @alloc29 to [0 x { [0 x i8]*, i64 }]*), [0 x { [0 x i8]*, i64 }]** %37, align 8, !dbg !99, !alias.scope !101, !noalias !104
  %38 = getelementptr inbounds %"std::fmt::Arguments", %"std::fmt::Arguments"* %_79, i64 0, i32 1, i32 1, !dbg !99
  store i64 3, i64* %38, align 8, !dbg !99, !alias.scope !101, !noalias !104
  %39 = getelementptr inbounds %"std::fmt::Arguments", %"std::fmt::Arguments"* %_79, i64 0, i32 3, i32 0, !dbg !99
  %40 = getelementptr inbounds %"std::fmt::Arguments", %"std::fmt::Arguments"* %_79, i64 0, i32 5, i32 0, !dbg !99
  %41 = bitcast i64** %39 to i8*, !dbg !99
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %41, i8 0, i64 16, i1 false) #8, !dbg !99, !alias.scope !101, !noalias !104
  %42 = bitcast [0 x { i8*, i64* }]** %40 to [2 x { i8*, i64* }]**, !dbg !99
  store [2 x { i8*, i64* }]* %_86, [2 x { i8*, i64* }]** %42, align 8, !dbg !99, !alias.scope !101, !noalias !104
  %43 = getelementptr inbounds %"std::fmt::Arguments", %"std::fmt::Arguments"* %_79, i64 0, i32 5, i32 1, !dbg !99
  store i64 2, i64* %43, align 8, !dbg !99, !alias.scope !101, !noalias !104
; call std::io::stdio::_print
  call void @_ZN3std2io5stdio6_print17haa76c613034f91daE(%"std::fmt::Arguments"* noalias nocapture nonnull dereferenceable(48) %_79), !dbg !98
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %30), !dbg !98
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %31), !dbg !98
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12), !dbg !107
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0), !dbg !107
  ret void, !dbg !108
}

; Function Attrs: minsize nounwind optsize uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; std::rt::lang_start_internal
; Function Attrs: minsize optsize uwtable
declare i64 @_ZN3std2rt19lang_start_internal17h103433e957e14c30E({}* nonnull align 1, [3 x i64]* noalias readonly align 8 dereferenceable(24), i64, i8**) unnamed_addr #1

; core::fmt::num::imp::<impl core::fmt::Display for i32>::fmt
; Function Attrs: minsize optsize uwtable
declare zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h102212dec5c19255E"(i32* noalias readonly align 4 dereferenceable(4), %"std::fmt::Formatter"* noalias align 8 dereferenceable(64)) unnamed_addr #1

; std::io::stdio::_print
; Function Attrs: minsize optsize uwtable
declare void @_ZN3std2io5stdio6_print17haa76c613034f91daE(%"std::fmt::Arguments"* noalias nocapture dereferenceable(48)) unnamed_addr #1

; Function Attrs: minsize optsize
define i32 @main(i32 %0, i8** %1) unnamed_addr #6 {
top:
  %2 = sext i32 %0 to i64
; call std::rt::lang_start
  %3 = tail call i64 @_ZN3std2rt10lang_start17h59d1a8dff2fd22d9E(void ()* @_ZN11rust_sample4main17h9cff0f0cc5fcb4eeE, i64 %2, i8** %1)
  %4 = trunc i64 %3 to i32
  ret i32 %4
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { minsize noinline optsize uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a12" }
attributes #1 = { minsize optsize uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a12" }
attributes #2 = { inlinehint minsize optsize uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a12" }
attributes #3 = { inlinehint minsize norecurse nounwind optsize readnone uwtable willreturn "frame-pointer"="non-leaf" "target-cpu"="apple-a12" }
attributes #4 = { minsize nounwind optsize uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a12" }
attributes #5 = { argmemonly nofree nosync nounwind willreturn }
attributes #6 = { minsize optsize "frame-pointer"="non-leaf" "target-cpu"="apple-a12" }
attributes #7 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.dbg.cu = !{!4}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 2, !"Dwarf Version", i32 2}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !5, producer: "clang LLVM (rustc version 1.55.0 (c8dfcfe04 2021-09-06))", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !6)
!5 = !DIFile(filename: "rust_sample.rs/@/rust_sample.a5b4095d-cgu.0", directory: "/Users/rkrsn/workspace/raptor-oss/llvm-source-extractor/testdata")
!6 = !{}
!7 = distinct !DISubprogram(name: "__rust_begin_short_backtrace<fn(), ()>", linkageName: "_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17hda01b5440180bfadE", scope: !9, file: !8, line: 121, type: !12, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !6, retainedNodes: !6)
!8 = !DIFile(filename: "/rustc/c8dfcfe046a7680554bf4eb612bad840e7631c4b/library/std/src/sys_common/backtrace.rs", directory: "", checksumkind: CSK_MD5, checksum: "a66d3ea15c41bfcbfadc8617be007fe2")
!9 = !DINamespace(name: "backtrace", scope: !10)
!10 = !DINamespace(name: "sys_common", scope: !11)
!11 = !DINamespace(name: "std", scope: null)
!12 = !DISubroutineType(types: !6)
!13 = !DILocation(line: 227, column: 5, scope: !14, inlinedAt: !20)
!14 = distinct !DISubprogram(name: "call_once<fn(), ()>", linkageName: "_ZN4core3ops8function6FnOnce9call_once17hd837d724b77bba1eE", scope: !16, file: !15, line: 227, type: !12, scopeLine: 227, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !6, retainedNodes: !6)
!15 = !DIFile(filename: "/rustc/c8dfcfe046a7680554bf4eb612bad840e7631c4b/library/core/src/ops/function.rs", directory: "", checksumkind: CSK_MD5, checksum: "1a40c014f8a7b8b7cd612b461a47e902")
!16 = !DINamespace(name: "FnOnce", scope: !17)
!17 = !DINamespace(name: "function", scope: !18)
!18 = !DINamespace(name: "ops", scope: !19)
!19 = !DINamespace(name: "core", scope: null)
!20 = distinct !DILocation(line: 125, column: 18, scope: !7)
!21 = !DILocation(line: 170, column: 9, scope: !22, inlinedAt: !25)
!22 = distinct !DISubprogram(name: "black_box<()>", linkageName: "_ZN4core4hint9black_box17h5c38a0f017113cdaE", scope: !24, file: !23, line: 159, type: !12, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !6, retainedNodes: !6)
!23 = !DIFile(filename: "/rustc/c8dfcfe046a7680554bf4eb612bad840e7631c4b/library/core/src/hint.rs", directory: "", checksumkind: CSK_MD5, checksum: "82ea49fa900146df18b081caefcc76bf")
!24 = !DINamespace(name: "hint", scope: !19)
!25 = distinct !DILocation(line: 128, column: 5, scope: !7)
!26 = !{i32 2912334}
!27 = !DILocation(line: 174, column: 2, scope: !22, inlinedAt: !25)
!28 = !DILocation(line: 131, column: 2, scope: !7)
!29 = distinct !DISubprogram(name: "lang_start<()>", linkageName: "_ZN3std2rt10lang_start17h59d1a8dff2fd22d9E", scope: !31, file: !30, line: 57, type: !12, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !6, retainedNodes: !6)
!30 = !DIFile(filename: "/rustc/c8dfcfe046a7680554bf4eb612bad840e7631c4b/library/std/src/rt.rs", directory: "", checksumkind: CSK_MD5, checksum: "e138c62b701c3a057abacf7cd21f0105")
!31 = !DINamespace(name: "rt", scope: !11)
!32 = !DILocation(line: 63, column: 10, scope: !29)
!33 = !DILocation(line: 63, column: 9, scope: !29)
!34 = !DILocation(line: 62, column: 5, scope: !29)
!35 = !DILocation(line: 68, column: 1, scope: !29)
!36 = !DILocation(line: 68, column: 2, scope: !29)
!37 = distinct !DISubprogram(name: "{closure#0}<()>", linkageName: "_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h479c629bd12cb7daE", scope: !38, file: !30, line: 63, type: !12, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !6, retainedNodes: !6)
!38 = !DINamespace(name: "lang_start", scope: !31)
!39 = !DILocation(line: 63, column: 77, scope: !37)
!40 = !DILocation(line: 63, column: 18, scope: !37)
!41 = !DILocation(line: 63, column: 91, scope: !37)
!42 = distinct !DISubprogram(name: "call_once<std::rt::lang_start::{closure#0}, ()>", linkageName: "_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hc86d38dc52479c72E", scope: !16, file: !15, line: 227, type: !12, scopeLine: 227, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !6, retainedNodes: !6)
!43 = !DILocation(line: 227, column: 5, scope: !42)
!44 = !DILocation(line: 63, column: 18, scope: !37, inlinedAt: !45)
!45 = distinct !DILocation(line: 227, column: 5, scope: !46, inlinedAt: !47)
!46 = distinct !DISubprogram(name: "call_once<std::rt::lang_start::{closure#0}, ()>", linkageName: "_ZN4core3ops8function6FnOnce9call_once17h5ddea02e1c0a5f38E", scope: !16, file: !15, line: 227, type: !12, scopeLine: 227, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !6, retainedNodes: !6)
!47 = distinct !DILocation(line: 227, column: 5, scope: !42)
!48 = !{!49}
!49 = distinct !{!49, !50, !"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h479c629bd12cb7daE: %_1"}
!50 = distinct !{!50, !"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h479c629bd12cb7daE"}
!51 = distinct !DISubprogram(name: "drop_in_place<std::rt::lang_start::{closure#0}>", linkageName: "_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h62911d387742022bE", scope: !53, file: !52, line: 192, type: !12, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !6, retainedNodes: !6)
!52 = !DIFile(filename: "/rustc/c8dfcfe046a7680554bf4eb612bad840e7631c4b/library/core/src/ptr/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "ede7ad73a30ab502bc762863dece5802")
!53 = !DINamespace(name: "ptr", scope: !19)
!54 = !DILocation(line: 192, column: 1, scope: !51)
!55 = distinct !DISubprogram(name: "main", linkageName: "_ZN11rust_sample4main17h9cff0f0cc5fcb4eeE", scope: !57, file: !56, line: 1, type: !12, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized | DISPFlagMainSubprogram, unit: !4, templateParams: !6, retainedNodes: !6)
!56 = !DIFile(filename: "rust_sample.rs", directory: "/Users/rkrsn/workspace/raptor-oss/llvm-source-extractor/testdata", checksumkind: CSK_MD5, checksum: "f9db45fa76050ee27f4b48dfa5b61068")
!57 = !DINamespace(name: "rust_sample", scope: null)
!58 = !DILocation(line: 2, column: 9, scope: !55)
!59 = !DILocation(line: 2, column: 13, scope: !55)
!60 = !DILocation(line: 7, column: 9, scope: !55)
!61 = !DILocation(line: 341, column: 9, scope: !62, inlinedAt: !66)
!62 = distinct !DISubprogram(name: "new_v1", linkageName: "_ZN4core3fmt9Arguments6new_v117h612a69da5a1d91caE", scope: !64, file: !63, line: 340, type: !12, scopeLine: 340, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !6, retainedNodes: !6)
!63 = !DIFile(filename: "/rustc/c8dfcfe046a7680554bf4eb612bad840e7631c4b/library/core/src/fmt/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "63819acd67d7c5f5e2039a01e90b2289")
!64 = !DINamespace(name: "Arguments", scope: !65)
!65 = !DINamespace(name: "fmt", scope: !19)
!66 = distinct !DILocation(line: 7, column: 9, scope: !55)
!67 = !{!68}
!68 = distinct !{!68, !69, !"_ZN4core3fmt9Arguments6new_v117h612a69da5a1d91caE: argument 0"}
!69 = distinct !{!69, !"_ZN4core3fmt9Arguments6new_v117h612a69da5a1d91caE"}
!70 = !{!71, !72}
!71 = distinct !{!71, !69, !"_ZN4core3fmt9Arguments6new_v117h612a69da5a1d91caE: %pieces.0"}
!72 = distinct !{!72, !69, !"_ZN4core3fmt9Arguments6new_v117h612a69da5a1d91caE: %args.0"}
!73 = !DILocation(line: 12, column: 9, scope: !55)
!74 = !DILocation(line: 13, column: 12, scope: !55)
!75 = !DILocation(line: 13, column: 9, scope: !55)
!76 = !DILocation(line: 19, column: 13, scope: !55)
!77 = !DILocation(line: 341, column: 9, scope: !62, inlinedAt: !78)
!78 = distinct !DILocation(line: 19, column: 13, scope: !55)
!79 = !{!80}
!80 = distinct !{!80, !81, !"_ZN4core3fmt9Arguments6new_v117h612a69da5a1d91caE: argument 0"}
!81 = distinct !{!81, !"_ZN4core3fmt9Arguments6new_v117h612a69da5a1d91caE"}
!82 = !{!83, !84}
!83 = distinct !{!83, !81, !"_ZN4core3fmt9Arguments6new_v117h612a69da5a1d91caE: %pieces.0"}
!84 = distinct !{!84, !81, !"_ZN4core3fmt9Arguments6new_v117h612a69da5a1d91caE: %args.0"}
!85 = !DILocation(line: 22, column: 13, scope: !55)
!86 = !DILocation(line: 14, column: 13, scope: !55)
!87 = !DILocation(line: 341, column: 9, scope: !62, inlinedAt: !88)
!88 = distinct !DILocation(line: 14, column: 13, scope: !55)
!89 = !{!90}
!90 = distinct !{!90, !91, !"_ZN4core3fmt9Arguments6new_v117h612a69da5a1d91caE: argument 0"}
!91 = distinct !{!91, !"_ZN4core3fmt9Arguments6new_v117h612a69da5a1d91caE"}
!92 = !{!93, !94}
!93 = distinct !{!93, !91, !"_ZN4core3fmt9Arguments6new_v117h612a69da5a1d91caE: %pieces.0"}
!94 = distinct !{!94, !91, !"_ZN4core3fmt9Arguments6new_v117h612a69da5a1d91caE: %args.0"}
!95 = !DILocation(line: 17, column: 18, scope: !55)
!96 = !DILocation(line: 17, column: 13, scope: !55)
!97 = !DILocation(line: 0, scope: !55)
!98 = !DILocation(line: 27, column: 5, scope: !55)
!99 = !DILocation(line: 341, column: 9, scope: !62, inlinedAt: !100)
!100 = distinct !DILocation(line: 27, column: 5, scope: !55)
!101 = !{!102}
!102 = distinct !{!102, !103, !"_ZN4core3fmt9Arguments6new_v117h612a69da5a1d91caE: argument 0"}
!103 = distinct !{!103, !"_ZN4core3fmt9Arguments6new_v117h612a69da5a1d91caE"}
!104 = !{!105, !106}
!105 = distinct !{!105, !103, !"_ZN4core3fmt9Arguments6new_v117h612a69da5a1d91caE: %pieces.0"}
!106 = distinct !{!106, !103, !"_ZN4core3fmt9Arguments6new_v117h612a69da5a1d91caE: %args.0"}
!107 = !DILocation(line: 28, column: 1, scope: !55)
!108 = !DILocation(line: 28, column: 2, scope: !55)
