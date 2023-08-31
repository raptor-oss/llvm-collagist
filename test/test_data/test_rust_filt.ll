; ModuleID = 'test_rust.3b402897-cgu.0'
source_filename = "test_rust.3b402897-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%Sheep = type { { [0 x i8]*, i64 }, i8, [7 x i8] }
%"core::fmt::Arguments" = type { { [0 x { [0 x i8]*, i64 }]*, i64 }, { i64*, i64 }, { [0 x { i8*, i64* }]*, i64 } }
%"core::fmt::Formatter" = type { { i64, i64 }, { i64, i64 }, { {}*, [3 x i64]* }, i32, i32, i8, [7 x i8] }
%"core::fmt::Opaque" = type {}
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%"unwind::libunwind::_Unwind_Exception" = type { i64, void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [2 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

@alloc19 = private unnamed_addr constant <{ [0 x i8] }> zeroinitializer, align 8
@alloc23 = private unnamed_addr constant <{ [21 x i8] }> <{ [21 x i8] c" is already naked...\0A" }>, align 1
@alloc22 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [0 x i8] }>, <{ [0 x i8] }>* @alloc19, i32 0, i32 0, i32 0), [8 x i8] zeroinitializer, i8* getelementptr inbounds (<{ [21 x i8] }>, <{ [21 x i8] }>* @alloc23, i32 0, i32 0, i32 0), [8 x i8] c"\15\00\00\00\00\00\00\00" }>, align 8
@alloc27 = private unnamed_addr constant <{ [17 x i8] }> <{ [17 x i8] c" gets a haircut!\0A" }>, align 1
@alloc26 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [0 x i8] }>, <{ [0 x i8] }>* @alloc19, i32 0, i32 0, i32 0), [8 x i8] zeroinitializer, i8* getelementptr inbounds (<{ [17 x i8] }>, <{ [17 x i8] }>* @alloc27, i32 0, i32 0, i32 0), [8 x i8] c"\11\00\00\00\00\00\00\00" }>, align 8
@alloc51 = private unnamed_addr constant <{ [8 x i8] }> <{ [8 x i8] c"baaaaah?" }>, align 1
@alloc52 = private unnamed_addr constant <{ [8 x i8] }> <{ [8 x i8] c"baaaaah!" }>, align 1
@alloc7 = private unnamed_addr constant <{ [19 x i8] }> <{ [19 x i8] c" pauses briefly... " }>, align 1
@alloc8 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc6 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [0 x i8] }>, <{ [0 x i8] }>* @alloc19, i32 0, i32 0, i32 0), [8 x i8] zeroinitializer, i8* getelementptr inbounds (<{ [19 x i8] }>, <{ [19 x i8] }>* @alloc7, i32 0, i32 0, i32 0), [8 x i8] c"\13\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc8, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc53 = private unnamed_addr constant <{ [5 x i8] }> <{ [5 x i8] c"Dolly" }>, align 1
@vtable.0 = private unnamed_addr constant <{ i8*, [16 x i8], i8*, i8*, i8*, [0 x i8] }> <{ i8* bitcast (void (i64**)* @"core::ptr::drop_in_place<std::rt::lang_start<()>::{{closure}}>" to i8*), [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i32 (i64**)* @"core::ops::function::FnOnce::call_once{{vtable.shim}}" to i8*), i8* bitcast (i32 (i64**)* @"std::rt::lang_start::{{closure}}" to i8*), i8* bitcast (i32 (i64**)* @"std::rt::lang_start::{{closure}}" to i8*), [0 x i8] zeroinitializer }>, align 8, !dbg !0
@alloc16 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"invalid args" }>, align 1
@alloc17 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [12 x i8] }>, <{ [12 x i8] }>* @alloc16, i32 0, i32 0, i32 0), [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@alloc59 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/7737e0b5c4103216d6fd8cf941b7ab9bdbaace7c/library/core/src/fmt/mod.rs" }>, align 1
@alloc60 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc59, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\81\01\00\00\0D\00\00\00" }>, align 8

; core::ops::function::FnOnce::call_once{{vtable.shim}}
; Function Attrs: inlinehint uwtable
define internal i32 @"core::ops::function::FnOnce::call_once{{vtable.shim}}"(i64** %_1) unnamed_addr #0 !dbg !48 {
start:
  %_1.dbg.spill = alloca i64**, align 8
  %_2 = alloca {}, align 1
  store i64** %_1, i64*** %_1.dbg.spill, align 8
  call void @llvm.dbg.declare(metadata i64*** %_1.dbg.spill, metadata !58, metadata !DIExpression()), !dbg !63
  call void @llvm.dbg.declare(metadata {}* %_2, metadata !59, metadata !DIExpression()), !dbg !63
  %0 = load i64*, i64** %_1, align 8, !dbg !63, !nonnull !23
; call core::ops::function::FnOnce::call_once
  %1 = call i32 @core::ops::function::FnOnce::call_once(i64* nonnull %0), !dbg !63
  br label %bb1, !dbg !63

bb1:                                              ; preds = %start
  ret i32 %1, !dbg !63
}

; core::ops::function::FnOnce::call_once
; Function Attrs: inlinehint uwtable
define internal i32 @core::ops::function::FnOnce::call_once(i64* nonnull %0) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !64 {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_2 = alloca {}, align 1
  %_1 = alloca i64*, align 8
  store i64* %0, i64** %_1, align 8
  call void @llvm.dbg.declare(metadata i64** %_1, metadata !68, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.declare(metadata {}* %_2, metadata !69, metadata !DIExpression()), !dbg !70
; invoke std::rt::lang_start::{{closure}}
  %2 = invoke i32 @"std::rt::lang_start::{{closure}}"(i64** noundef align 8 dereferenceable(8) %_1)
          to label %bb1 unwind label %cleanup, !dbg !70

bb1:                                              ; preds = %start
  br label %bb2, !dbg !70

bb3:                                              ; preds = %cleanup
  br label %bb4, !dbg !70

cleanup:                                          ; preds = %start
  %3 = landingpad { i8*, i32 }
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  %5 = extractvalue { i8*, i32 } %3, 1
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %4, i8** %6, align 8
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %5, i32* %7, align 8
  br label %bb3

bb4:                                              ; preds = %bb3
  %8 = bitcast { i8*, i32 }* %1 to i8**, !dbg !70
  %9 = load i8*, i8** %8, align 8, !dbg !70
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1, !dbg !70
  %11 = load i32, i32* %10, align 8, !dbg !70
  %12 = insertvalue { i8*, i32 } undef, i8* %9, 0, !dbg !70
  %13 = insertvalue { i8*, i32 } %12, i32 %11, 1, !dbg !70
  resume { i8*, i32 } %13, !dbg !70

bb2:                                              ; preds = %bb1
  ret i32 %2, !dbg !70
}

; core::ops::function::FnOnce::call_once
; Function Attrs: inlinehint uwtable
define internal void @core::ops::function::FnOnce::call_once(void ()* nonnull %_1) unnamed_addr #0 !dbg !71 {
start:
  %_1.dbg.spill = alloca void ()*, align 8
  %_2 = alloca {}, align 1
  store void ()* %_1, void ()** %_1.dbg.spill, align 8
  call void @llvm.dbg.declare(metadata void ()** %_1.dbg.spill, metadata !75, metadata !DIExpression()), !dbg !79
  call void @llvm.dbg.declare(metadata {}* %_2, metadata !76, metadata !DIExpression()), !dbg !79
  call void %_1(), !dbg !79
  br label %bb1, !dbg !79

bb1:                                              ; preds = %start
  ret void, !dbg !79
}

; core::ptr::drop_in_place<std::rt::lang_start<()>::{{closure}}>
; Function Attrs: inlinehint uwtable
define internal void @"core::ptr::drop_in_place<std::rt::lang_start<()>::{{closure}}>"(i64** %_1) unnamed_addr #0 !dbg !80 {
start:
  %_1.dbg.spill = alloca i64**, align 8
  store i64** %_1, i64*** %_1.dbg.spill, align 8
  call void @llvm.dbg.declare(metadata i64*** %_1.dbg.spill, metadata !86, metadata !DIExpression()), !dbg !89
  ret void, !dbg !89
}

; test_rust::Sheep::is_naked
; Function Attrs: uwtable
define internal noundef zeroext i1 @test_rust::Sheep::is_naked(%Sheep* noundef align 8 dereferenceable(24) %self) unnamed_addr #1 !dbg !90 {
start:
  %self.dbg.spill = alloca %Sheep*, align 8
  store %Sheep* %self, %Sheep** %self.dbg.spill, align 8
  call void @llvm.dbg.declare(metadata %Sheep** %self.dbg.spill, metadata !107, metadata !DIExpression()), !dbg !108
  %0 = getelementptr inbounds %Sheep, %Sheep* %self, i32 0, i32 1, !dbg !109
  %1 = load i8, i8* %0, align 8, !dbg !109, !range !110
  %2 = trunc i8 %1 to i1, !dbg !109
  ret i1 %2, !dbg !111
}

; test_rust::Sheep::shear
; Function Attrs: uwtable
define internal void @test_rust::Sheep::shear(%Sheep* noundef align 8 dereferenceable(24) %self) unnamed_addr #1 !dbg !112 {
start:
  %self.dbg.spill = alloca %Sheep*, align 8
  %_26 = alloca [1 x { i8*, i64* }], align 8
  %_19 = alloca %"core::fmt::Arguments", align 8
  %_16 = alloca { [0 x i8]*, i64 }, align 8
  %_12 = alloca [1 x { i8*, i64* }], align 8
  %_5 = alloca %"core::fmt::Arguments", align 8
  store %Sheep* %self, %Sheep** %self.dbg.spill, align 8
  call void @llvm.dbg.declare(metadata %Sheep** %self.dbg.spill, metadata !117, metadata !DIExpression()), !dbg !118
; call test_rust::Sheep::is_naked
  %_2 = call noundef zeroext i1 @test_rust::Sheep::is_naked(%Sheep* noundef align 8 dereferenceable(24) %self), !dbg !119
  br label %bb1, !dbg !119

bb1:                                              ; preds = %start
  br i1 %_2, label %bb2, label %bb6, !dbg !119

bb6:                                              ; preds = %bb1
  %_29 = bitcast %Sheep* %self to { [0 x i8]*, i64 }*, !dbg !120
; call core::fmt::ArgumentV1::new_display
  %0 = call { i8*, i64* } @core::fmt::ArgumentV1::new_display({ [0 x i8]*, i64 }* noundef align 8 dereferenceable(16) %_29), !dbg !120
  %_27.0 = extractvalue { i8*, i64* } %0, 0, !dbg !120
  %_27.1 = extractvalue { i8*, i64* } %0, 1, !dbg !120
  br label %bb7, !dbg !120

bb2:                                              ; preds = %bb1
; call <test_rust::Sheep as test_rust::Animal>::name
  %1 = call { [0 x i8]*, i64 } @"<test_rust::Sheep as test_rust::Animal>::name"(%Sheep* noundef align 8 dereferenceable(24) %self), !dbg !121
  store { [0 x i8]*, i64 } %1, { [0 x i8]*, i64 }* %_16, align 8, !dbg !121
  br label %bb3, !dbg !121

bb3:                                              ; preds = %bb2
; call core::fmt::ArgumentV1::new_display
  %2 = call { i8*, i64* } @core::fmt::ArgumentV1::new_display({ [0 x i8]*, i64 }* noundef align 8 dereferenceable(16) %_16), !dbg !122
  %_13.0 = extractvalue { i8*, i64* } %2, 0, !dbg !122
  %_13.1 = extractvalue { i8*, i64* } %2, 1, !dbg !122
  br label %bb4, !dbg !122

bb4:                                              ; preds = %bb3
  %3 = bitcast [1 x { i8*, i64* }]* %_12 to { i8*, i64* }*, !dbg !122
  %4 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %3, i32 0, i32 0, !dbg !122
  store i8* %_13.0, i8** %4, align 8, !dbg !122
  %5 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %3, i32 0, i32 1, !dbg !122
  store i64* %_13.1, i64** %5, align 8, !dbg !122
  %_9.0 = bitcast [1 x { i8*, i64* }]* %_12 to [0 x { i8*, i64* }]*, !dbg !122
; call core::fmt::Arguments::new_v1
  call void @core::fmt::Arguments::new_v1(%"core::fmt::Arguments"* noalias nocapture noundef sret(%"core::fmt::Arguments") dereferenceable(48) %_5, [0 x { [0 x i8]*, i64 }]* noundef nonnull align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8] }>* @alloc22 to [0 x { [0 x i8]*, i64 }]*), i64 2, [0 x { i8*, i64* }]* noundef nonnull align 8 %_9.0, i64 1), !dbg !122
  br label %bb5, !dbg !122

bb5:                                              ; preds = %bb4
; call std::io::stdio::_print
  call void @std::io::stdio::_print(%"core::fmt::Arguments"* noalias nocapture noundef dereferenceable(48) %_5), !dbg !122
  br label %bb10, !dbg !122

bb10:                                             ; preds = %bb9, %bb5
  ret void, !dbg !123

bb7:                                              ; preds = %bb6
  %6 = bitcast [1 x { i8*, i64* }]* %_26 to { i8*, i64* }*, !dbg !120
  %7 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %6, i32 0, i32 0, !dbg !120
  store i8* %_27.0, i8** %7, align 8, !dbg !120
  %8 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %6, i32 0, i32 1, !dbg !120
  store i64* %_27.1, i64** %8, align 8, !dbg !120
  %_23.0 = bitcast [1 x { i8*, i64* }]* %_26 to [0 x { i8*, i64* }]*, !dbg !120
; call core::fmt::Arguments::new_v1
  call void @core::fmt::Arguments::new_v1(%"core::fmt::Arguments"* noalias nocapture noundef sret(%"core::fmt::Arguments") dereferenceable(48) %_19, [0 x { [0 x i8]*, i64 }]* noundef nonnull align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8] }>* @alloc26 to [0 x { [0 x i8]*, i64 }]*), i64 2, [0 x { i8*, i64* }]* noundef nonnull align 8 %_23.0, i64 1), !dbg !120
  br label %bb8, !dbg !120

bb8:                                              ; preds = %bb7
; call std::io::stdio::_print
  call void @std::io::stdio::_print(%"core::fmt::Arguments"* noalias nocapture noundef dereferenceable(48) %_19), !dbg !120
  br label %bb9, !dbg !120

bb9:                                              ; preds = %bb8
  %9 = getelementptr inbounds %Sheep, %Sheep* %self, i32 0, i32 1, !dbg !124
  store i8 1, i8* %9, align 8, !dbg !124
  br label %bb10, !dbg !125
}

; <test_rust::Sheep as test_rust::Animal>::new
; Function Attrs: uwtable
define internal void @"<test_rust::Sheep as test_rust::Animal>::new"(%Sheep* noalias nocapture noundef sret(%Sheep) dereferenceable(24) %0, [0 x i8]* noundef nonnull align 1 %name.0, i64 %name.1) unnamed_addr #1 !dbg !126 {
start:
  %name.dbg.spill = alloca { [0 x i8]*, i64 }, align 8
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %name.dbg.spill, i32 0, i32 0
  store [0 x i8]* %name.0, [0 x i8]** %1, align 8
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %name.dbg.spill, i32 0, i32 1
  store i64 %name.1, i64* %2, align 8
  call void @llvm.dbg.declare(metadata { [0 x i8]*, i64 }* %name.dbg.spill, metadata !131, metadata !DIExpression()), !dbg !132
  %3 = getelementptr inbounds %Sheep, %Sheep* %0, i32 0, i32 1, !dbg !133
  store i8 0, i8* %3, align 8, !dbg !133
  %4 = bitcast %Sheep* %0 to { [0 x i8]*, i64 }*, !dbg !133
  %5 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %4, i32 0, i32 0, !dbg !133
  store [0 x i8]* %name.0, [0 x i8]** %5, align 8, !dbg !133
  %6 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %4, i32 0, i32 1, !dbg !133
  store i64 %name.1, i64* %6, align 8, !dbg !133
  ret void, !dbg !134
}

; <test_rust::Sheep as test_rust::Animal>::name
; Function Attrs: uwtable
define internal { [0 x i8]*, i64 } @"<test_rust::Sheep as test_rust::Animal>::name"(%Sheep* noundef align 8 dereferenceable(24) %self) unnamed_addr #1 !dbg !135 {
start:
  %self.dbg.spill = alloca %Sheep*, align 8
  store %Sheep* %self, %Sheep** %self.dbg.spill, align 8
  call void @llvm.dbg.declare(metadata %Sheep** %self.dbg.spill, metadata !139, metadata !DIExpression()), !dbg !140
  %0 = bitcast %Sheep* %self to { [0 x i8]*, i64 }*, !dbg !141
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0, !dbg !141
  %2 = load [0 x i8]*, [0 x i8]** %1, align 8, !dbg !141, !nonnull !23
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1, !dbg !141
  %4 = load i64, i64* %3, align 8, !dbg !141
  %5 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %2, 0, !dbg !142
  %6 = insertvalue { [0 x i8]*, i64 } %5, i64 %4, 1, !dbg !142
  ret { [0 x i8]*, i64 } %6, !dbg !142
}

; <test_rust::Sheep as test_rust::Animal>::noise
; Function Attrs: uwtable
define internal { [0 x i8]*, i64 } @"<test_rust::Sheep as test_rust::Animal>::noise"(%Sheep* noundef align 8 dereferenceable(24) %self) unnamed_addr #1 !dbg !143 {
start:
  %self.dbg.spill = alloca %Sheep*, align 8
  %0 = alloca { [0 x i8]*, i64 }, align 8
  store %Sheep* %self, %Sheep** %self.dbg.spill, align 8
  call void @llvm.dbg.declare(metadata %Sheep** %self.dbg.spill, metadata !145, metadata !DIExpression()), !dbg !146
; call test_rust::Sheep::is_naked
  %_2 = call noundef zeroext i1 @test_rust::Sheep::is_naked(%Sheep* noundef align 8 dereferenceable(24) %self), !dbg !147
  br label %bb1, !dbg !147

bb1:                                              ; preds = %start
  br i1 %_2, label %bb2, label %bb3, !dbg !147

bb3:                                              ; preds = %bb1
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0, !dbg !148
  store [0 x i8]* bitcast (<{ [8 x i8] }>* @alloc52 to [0 x i8]*), [0 x i8]** %1, align 8, !dbg !148
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1, !dbg !148
  store i64 8, i64* %2, align 8, !dbg !148
  br label %bb4, !dbg !149

bb2:                                              ; preds = %bb1
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0, !dbg !150
  store [0 x i8]* bitcast (<{ [8 x i8] }>* @alloc51 to [0 x i8]*), [0 x i8]** %3, align 8, !dbg !150
  %4 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1, !dbg !150
  store i64 8, i64* %4, align 8, !dbg !150
  br label %bb4, !dbg !149

bb4:                                              ; preds = %bb3, %bb2
  %5 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0, !dbg !151
  %6 = load [0 x i8]*, [0 x i8]** %5, align 8, !dbg !151, !nonnull !23
  %7 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1, !dbg !151
  %8 = load i64, i64* %7, align 8, !dbg !151
  %9 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %6, 0, !dbg !151
  %10 = insertvalue { [0 x i8]*, i64 } %9, i64 %8, 1, !dbg !151
  ret { [0 x i8]*, i64 } %10, !dbg !151
}

; <test_rust::Sheep as test_rust::Animal>::talk
; Function Attrs: uwtable
define internal void @"<test_rust::Sheep as test_rust::Animal>::talk"(%Sheep* noundef align 8 dereferenceable(24) %self) unnamed_addr #1 !dbg !152 {
start:
  %self.dbg.spill = alloca %Sheep*, align 8
  %_17 = alloca { [0 x i8]*, i64 }, align 8
  %_10 = alloca [2 x { i8*, i64* }], align 8
  %_3 = alloca %"core::fmt::Arguments", align 8
  store %Sheep* %self, %Sheep** %self.dbg.spill, align 8
  call void @llvm.dbg.declare(metadata %Sheep** %self.dbg.spill, metadata !156, metadata !DIExpression()), !dbg !157
  %_13 = bitcast %Sheep* %self to { [0 x i8]*, i64 }*, !dbg !158
; call core::fmt::ArgumentV1::new_display
  %0 = call { i8*, i64* } @core::fmt::ArgumentV1::new_display({ [0 x i8]*, i64 }* noundef align 8 dereferenceable(16) %_13), !dbg !158
  %_11.0 = extractvalue { i8*, i64* } %0, 0, !dbg !158
  %_11.1 = extractvalue { i8*, i64* } %0, 1, !dbg !158
  br label %bb1, !dbg !158

bb1:                                              ; preds = %start
; call <test_rust::Sheep as test_rust::Animal>::noise
  %1 = call { [0 x i8]*, i64 } @"<test_rust::Sheep as test_rust::Animal>::noise"(%Sheep* noundef align 8 dereferenceable(24) %self), !dbg !159
  store { [0 x i8]*, i64 } %1, { [0 x i8]*, i64 }* %_17, align 8, !dbg !159
  br label %bb2, !dbg !159

bb2:                                              ; preds = %bb1
; call core::fmt::ArgumentV1::new_display
  %2 = call { i8*, i64* } @core::fmt::ArgumentV1::new_display({ [0 x i8]*, i64 }* noundef align 8 dereferenceable(16) %_17), !dbg !158
  %_14.0 = extractvalue { i8*, i64* } %2, 0, !dbg !158
  %_14.1 = extractvalue { i8*, i64* } %2, 1, !dbg !158
  br label %bb3, !dbg !158

bb3:                                              ; preds = %bb2
  %3 = bitcast [2 x { i8*, i64* }]* %_10 to { i8*, i64* }*, !dbg !158
  %4 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %3, i32 0, i32 0, !dbg !158
  store i8* %_11.0, i8** %4, align 8, !dbg !158
  %5 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %3, i32 0, i32 1, !dbg !158
  store i64* %_11.1, i64** %5, align 8, !dbg !158
  %6 = getelementptr inbounds [2 x { i8*, i64* }], [2 x { i8*, i64* }]* %_10, i32 0, i32 1, !dbg !158
  %7 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %6, i32 0, i32 0, !dbg !158
  store i8* %_14.0, i8** %7, align 8, !dbg !158
  %8 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %6, i32 0, i32 1, !dbg !158
  store i64* %_14.1, i64** %8, align 8, !dbg !158
  %_7.0 = bitcast [2 x { i8*, i64* }]* %_10 to [0 x { i8*, i64* }]*, !dbg !158
; call core::fmt::Arguments::new_v1
  call void @core::fmt::Arguments::new_v1(%"core::fmt::Arguments"* noalias nocapture noundef sret(%"core::fmt::Arguments") dereferenceable(48) %_3, [0 x { [0 x i8]*, i64 }]* noundef nonnull align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8] }>* @alloc6 to [0 x { [0 x i8]*, i64 }]*), i64 3, [0 x { i8*, i64* }]* noundef nonnull align 8 %_7.0, i64 2), !dbg !158
  br label %bb4, !dbg !158

bb4:                                              ; preds = %bb3
; call std::io::stdio::_print
  call void @std::io::stdio::_print(%"core::fmt::Arguments"* noalias nocapture noundef dereferenceable(48) %_3), !dbg !158
  br label %bb5, !dbg !158

bb5:                                              ; preds = %bb4
  ret void, !dbg !160
}

; test_rust::main
; Function Attrs: uwtable
define internal void @test_rust::main() unnamed_addr #1 !dbg !161 {
start:
  %dolly = alloca %Sheep, align 8
  call void @llvm.dbg.declare(metadata %Sheep* %dolly, metadata !163, metadata !DIExpression()), !dbg !165
; call <test_rust::Sheep as test_rust::Animal>::new
  call void @"<test_rust::Sheep as test_rust::Animal>::new"(%Sheep* noalias nocapture noundef sret(%Sheep) dereferenceable(24) %dolly, [0 x i8]* noundef nonnull align 1 bitcast (<{ [5 x i8] }>* @alloc53 to [0 x i8]*), i64 5), !dbg !166
  br label %bb1, !dbg !166

bb1:                                              ; preds = %start
; call <test_rust::Sheep as test_rust::Animal>::talk
  call void @"<test_rust::Sheep as test_rust::Animal>::talk"(%Sheep* noundef align 8 dereferenceable(24) %dolly), !dbg !167
  br label %bb2, !dbg !167

bb2:                                              ; preds = %bb1
; call test_rust::Sheep::shear
  call void @test_rust::Sheep::shear(%Sheep* noundef align 8 dereferenceable(24) %dolly), !dbg !168
  br label %bb3, !dbg !168

bb3:                                              ; preds = %bb2
; call <test_rust::Sheep as test_rust::Animal>::talk
  call void @"<test_rust::Sheep as test_rust::Animal>::talk"(%Sheep* noundef align 8 dereferenceable(24) %dolly), !dbg !169
  br label %bb4, !dbg !169

bb4:                                              ; preds = %bb3
  ret void, !dbg !170
}

; core::hint::black_box
; Function Attrs: inlinehint uwtable
define internal void @core::hint::black_box() unnamed_addr #0 !dbg !172 {
start:
  %dummy.dbg.spill = alloca {}, align 1
  call void @llvm.dbg.declare(metadata {}* %dummy.dbg.spill, metadata !178, metadata !DIExpression()), !dbg !181
  call void asm sideeffect "", "r,~{memory}"({}* undef), !dbg !182, !srcloc !183
  br label %bb1, !dbg !182

bb1:                                              ; preds = %start
  ret void, !dbg !184
}

; std::process::ExitCode::to_i32
; Function Attrs: inlinehint uwtable
define internal i32 @std::process::ExitCode::to_i32(i8 %0) unnamed_addr #0 !dbg !185 {
start:
  %self = alloca i8, align 1
  store i8 %0, i8* %self, align 1
  call void @llvm.dbg.declare(metadata i8* %self, metadata !201, metadata !DIExpression()), !dbg !202
; call std::sys::unix::process::process_common::ExitCode::as_i32
  %1 = call i32 @std::sys::unix::process::process_common::ExitCode::as_i32(i8* noundef align 1 dereferenceable(1) %self), !dbg !203
  br label %bb1, !dbg !203

bb1:                                              ; preds = %start
  ret i32 %1, !dbg !204
}

; <() as std::process::Termination>::report
; Function Attrs: inlinehint uwtable
define internal i8 @"<() as std::process::Termination>::report"() unnamed_addr #0 !dbg !205 {
start:
  %self.dbg.spill = alloca {}, align 1
  call void @llvm.dbg.declare(metadata {}* %self.dbg.spill, metadata !210, metadata !DIExpression()), !dbg !211
; call <std::process::ExitCode as std::process::Termination>::report
  %0 = call i8 @"<std::process::ExitCode as std::process::Termination>::report"(i8 0), !dbg !212
  br label %bb1, !dbg !212

bb1:                                              ; preds = %start
  ret i8 %0, !dbg !213
}

; <std::process::ExitCode as std::process::Termination>::report
; Function Attrs: inlinehint uwtable
define internal i8 @"<std::process::ExitCode as std::process::Termination>::report"(i8 %self) unnamed_addr #0 !dbg !214 {
start:
  %self.dbg.spill = alloca i8, align 1
  store i8 %self, i8* %self.dbg.spill, align 1
  call void @llvm.dbg.declare(metadata i8* %self.dbg.spill, metadata !219, metadata !DIExpression()), !dbg !220
  ret i8 %self, !dbg !221
}

; std::rt::lang_start
; Function Attrs: uwtable
define hidden i64 @std::rt::lang_start(void ()* nonnull %main, i64 %argc, i8** %argv) unnamed_addr #1 !dbg !222 {
start:
  %v.dbg.spill = alloca i64, align 8
  %argv.dbg.spill = alloca i8**, align 8
  %argc.dbg.spill = alloca i64, align 8
  %main.dbg.spill = alloca void ()*, align 8
  %_8 = alloca i64*, align 8
  %_4 = alloca i64, align 8
  store void ()* %main, void ()** %main.dbg.spill, align 8
  call void @llvm.dbg.declare(metadata void ()** %main.dbg.spill, metadata !230, metadata !DIExpression()), !dbg !235
  store i64 %argc, i64* %argc.dbg.spill, align 8
  call void @llvm.dbg.declare(metadata i64* %argc.dbg.spill, metadata !231, metadata !DIExpression()), !dbg !236
  store i8** %argv, i8*** %argv.dbg.spill, align 8
  call void @llvm.dbg.declare(metadata i8*** %argv.dbg.spill, metadata !232, metadata !DIExpression()), !dbg !237
  %0 = bitcast i64** %_8 to void ()**, !dbg !238
  store void ()* %main, void ()** %0, align 8, !dbg !238
  %_5.0 = bitcast i64** %_8 to {}*, !dbg !239
; call std::rt::lang_start_internal
  %1 = call i64 @std::rt::lang_start_internal({}* noundef nonnull align 1 %_5.0, [3 x i64]* noundef align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8], i8*, i8*, i8*, [0 x i8] }>* @vtable.0 to [3 x i64]*), i64 %argc, i8** %argv), !dbg !240
  store i64 %1, i64* %_4, align 8, !dbg !240
  br label %bb1, !dbg !240

bb1:                                              ; preds = %start
  %v = load i64, i64* %_4, align 8, !dbg !241
  store i64 %v, i64* %v.dbg.spill, align 8, !dbg !241
  call void @llvm.dbg.declare(metadata i64* %v.dbg.spill, metadata !233, metadata !DIExpression()), !dbg !242
  ret i64 %v, !dbg !243
}

; std::rt::lang_start::{{closure}}
; Function Attrs: inlinehint uwtable
define internal i32 @"std::rt::lang_start::{{closure}}"(i64** noundef align 8 dereferenceable(8) %_1) unnamed_addr #0 !dbg !244 {
start:
  %_1.dbg.spill = alloca i64**, align 8
  store i64** %_1, i64*** %_1.dbg.spill, align 8
  %0 = load i64**, i64*** %_1.dbg.spill, align 8, !nonnull !23
  %1 = bitcast i64** %0 to void ()**
  call void @llvm.dbg.declare(metadata i64*** %_1.dbg.spill, metadata !249, metadata !DIExpression(DW_OP_deref)), !dbg !250
  %2 = bitcast i64** %_1 to void ()**, !dbg !251
  %_4 = load void ()*, void ()** %2, align 8, !dbg !251, !nonnull !23
; call std::sys_common::backtrace::__rust_begin_short_backtrace
  call void @std::sys_common::backtrace::__rust_begin_short_backtrace(void ()* nonnull %_4), !dbg !252
  br label %bb1, !dbg !252

bb1:                                              ; preds = %start
; call <() as std::process::Termination>::report
  %_2 = call i8 @"<() as std::process::Termination>::report"(), !dbg !252
  br label %bb2, !dbg !252

bb2:                                              ; preds = %bb1
; call std::process::ExitCode::to_i32
  %3 = call i32 @std::process::ExitCode::to_i32(i8 %_2), !dbg !252
  br label %bb3, !dbg !252

bb3:                                              ; preds = %bb2
  ret i32 %3, !dbg !253
}

; std::sys_common::backtrace::__rust_begin_short_backtrace
; Function Attrs: noinline uwtable
define internal void @std::sys_common::backtrace::__rust_begin_short_backtrace(void ()* nonnull %f) unnamed_addr #2 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !254 {
start:
  %0 = alloca { i8*, i32 }, align 8
  %f.dbg.spill = alloca void ()*, align 8
  %result.dbg.spill = alloca {}, align 1
  call void @llvm.dbg.declare(metadata {}* %result.dbg.spill, metadata !260, metadata !DIExpression()), !dbg !264
  store void ()* %f, void ()** %f.dbg.spill, align 8
  call void @llvm.dbg.declare(metadata void ()** %f.dbg.spill, metadata !259, metadata !DIExpression()), !dbg !265
; call core::ops::function::FnOnce::call_once
  call void @core::ops::function::FnOnce::call_once(void ()* nonnull %f), !dbg !266
  br label %bb1, !dbg !266

bb1:                                              ; preds = %start
; invoke core::hint::black_box
  invoke void @core::hint::black_box()
          to label %bb2 unwind label %cleanup, !dbg !267

bb2:                                              ; preds = %bb1
  ret void, !dbg !268

bb3:                                              ; preds = %cleanup
  br label %bb4, !dbg !269

cleanup:                                          ; preds = %bb1
  %1 = landingpad { i8*, i32 }
          cleanup
  %2 = extractvalue { i8*, i32 } %1, 0
  %3 = extractvalue { i8*, i32 } %1, 1
  %4 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %2, i8** %4, align 8
  %5 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %3, i32* %5, align 8
  br label %bb3

bb4:                                              ; preds = %bb3
  %6 = bitcast { i8*, i32 }* %0 to i8**, !dbg !270
  %7 = load i8*, i8** %6, align 8, !dbg !270
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1, !dbg !270
  %9 = load i32, i32* %8, align 8, !dbg !270
  %10 = insertvalue { i8*, i32 } undef, i8* %7, 0, !dbg !270
  %11 = insertvalue { i8*, i32 } %10, i32 %9, 1, !dbg !270
  resume { i8*, i32 } %11, !dbg !270
}

; core::fmt::ArgumentV1::new
; Function Attrs: inlinehint uwtable
define internal { i8*, i64* } @core::fmt::ArgumentV1::new({ [0 x i8]*, i64 }* noundef align 8 dereferenceable(16) %x, i1 ({ [0 x i8]*, i64 }*, %"core::fmt::Formatter"*)* nonnull %f) unnamed_addr #0 !dbg !271 {
start:
  %0 = alloca %"core::fmt::Opaque"*, align 8
  %1 = alloca i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, align 8
  %f.dbg.spill = alloca i1 ({ [0 x i8]*, i64 }*, %"core::fmt::Formatter"*)*, align 8
  %x.dbg.spill = alloca { [0 x i8]*, i64 }*, align 8
  %2 = alloca { i8*, i64* }, align 8
  store { [0 x i8]*, i64 }* %x, { [0 x i8]*, i64 }** %x.dbg.spill, align 8
  call void @llvm.dbg.declare(metadata { [0 x i8]*, i64 }** %x.dbg.spill, metadata !325, metadata !DIExpression()), !dbg !329
  store i1 ({ [0 x i8]*, i64 }*, %"core::fmt::Formatter"*)* %f, i1 ({ [0 x i8]*, i64 }*, %"core::fmt::Formatter"*)** %f.dbg.spill, align 8
  call void @llvm.dbg.declare(metadata i1 ({ [0 x i8]*, i64 }*, %"core::fmt::Formatter"*)** %f.dbg.spill, metadata !326, metadata !DIExpression()), !dbg !330
  %3 = bitcast i1 ({ [0 x i8]*, i64 }*, %"core::fmt::Formatter"*)* %f to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, !dbg !331
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8, !dbg !331
  %_3 = load i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8, !dbg !331, !nonnull !23
  br label %bb1, !dbg !331

bb1:                                              ; preds = %start
  %4 = bitcast { [0 x i8]*, i64 }* %x to %"core::fmt::Opaque"*, !dbg !332
  store %"core::fmt::Opaque"* %4, %"core::fmt::Opaque"** %0, align 8, !dbg !332
  %_5 = load %"core::fmt::Opaque"*, %"core::fmt::Opaque"** %0, align 8, !dbg !332, !nonnull !23
  br label %bb2, !dbg !332

bb2:                                              ; preds = %bb1
  %5 = bitcast { i8*, i64* }* %2 to %"core::fmt::Opaque"**, !dbg !333
  store %"core::fmt::Opaque"* %_5, %"core::fmt::Opaque"** %5, align 8, !dbg !333
  %6 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1, !dbg !333
  %7 = bitcast i64** %6 to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)**, !dbg !333
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %_3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %7, align 8, !dbg !333
  %8 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 0, !dbg !334
  %9 = load i8*, i8** %8, align 8, !dbg !334, !nonnull !23
  %10 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1, !dbg !334
  %11 = load i64*, i64** %10, align 8, !dbg !334, !nonnull !23
  %12 = insertvalue { i8*, i64* } undef, i8* %9, 0, !dbg !334
  %13 = insertvalue { i8*, i64* } %12, i64* %11, 1, !dbg !334
  ret { i8*, i64* } %13, !dbg !334
}

; core::fmt::Arguments::new_v1
; Function Attrs: inlinehint uwtable
define internal void @core::fmt::Arguments::new_v1(%"core::fmt::Arguments"* noalias nocapture noundef sret(%"core::fmt::Arguments") dereferenceable(48) %0, [0 x { [0 x i8]*, i64 }]* noundef nonnull align 8 %pieces.0, i64 %pieces.1, [0 x { i8*, i64* }]* noundef nonnull align 8 %args.0, i64 %args.1) unnamed_addr #0 !dbg !335 {
start:
  %args.dbg.spill = alloca { [0 x { i8*, i64* }]*, i64 }, align 8
  %pieces.dbg.spill = alloca { [0 x { [0 x i8]*, i64 }]*, i64 }, align 8
  %_23 = alloca { i64*, i64 }, align 8
  %_15 = alloca %"core::fmt::Arguments", align 8
  %_3 = alloca i8, align 1
  %1 = getelementptr inbounds { [0 x { [0 x i8]*, i64 }]*, i64 }, { [0 x { [0 x i8]*, i64 }]*, i64 }* %pieces.dbg.spill, i32 0, i32 0
  store [0 x { [0 x i8]*, i64 }]* %pieces.0, [0 x { [0 x i8]*, i64 }]** %1, align 8
  %2 = getelementptr inbounds { [0 x { [0 x i8]*, i64 }]*, i64 }, { [0 x { [0 x i8]*, i64 }]*, i64 }* %pieces.dbg.spill, i32 0, i32 1
  store i64 %pieces.1, i64* %2, align 8
  call void @llvm.dbg.declare(metadata { [0 x { [0 x i8]*, i64 }]*, i64 }* %pieces.dbg.spill, metadata !397, metadata !DIExpression()), !dbg !399
  %3 = getelementptr inbounds { [0 x { i8*, i64* }]*, i64 }, { [0 x { i8*, i64* }]*, i64 }* %args.dbg.spill, i32 0, i32 0
  store [0 x { i8*, i64* }]* %args.0, [0 x { i8*, i64* }]** %3, align 8
  %4 = getelementptr inbounds { [0 x { i8*, i64* }]*, i64 }, { [0 x { i8*, i64* }]*, i64 }* %args.dbg.spill, i32 0, i32 1
  store i64 %args.1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata { [0 x { i8*, i64* }]*, i64 }* %args.dbg.spill, metadata !398, metadata !DIExpression()), !dbg !400
  %_4 = icmp ult i64 %pieces.1, %args.1, !dbg !401
  br i1 %_4, label %bb1, label %bb2, !dbg !401

bb2:                                              ; preds = %start
  %_12 = add i64 %args.1, 1, !dbg !402
  %_9 = icmp ugt i64 %pieces.1, %_12, !dbg !403
  %5 = zext i1 %_9 to i8, !dbg !401
  store i8 %5, i8* %_3, align 1, !dbg !401
  br label %bb3, !dbg !401

bb1:                                              ; preds = %start
  store i8 1, i8* %_3, align 1, !dbg !401
  br label %bb3, !dbg !401

bb3:                                              ; preds = %bb2, %bb1
  %6 = load i8, i8* %_3, align 1, !dbg !401, !range !110
  %7 = trunc i8 %6 to i1, !dbg !401
  br i1 %7, label %bb4, label %bb6, !dbg !401

bb6:                                              ; preds = %bb3
  %8 = bitcast { i64*, i64 }* %_23 to i8*, !dbg !404
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 16, i1 false), !dbg !404
  %9 = bitcast { i64*, i64 }* %_23 to {}**, !dbg !404
  store {}* null, {}** %9, align 8, !dbg !404
  %10 = bitcast %"core::fmt::Arguments"* %0 to { [0 x { [0 x i8]*, i64 }]*, i64 }*, !dbg !405
  %11 = getelementptr inbounds { [0 x { [0 x i8]*, i64 }]*, i64 }, { [0 x { [0 x i8]*, i64 }]*, i64 }* %10, i32 0, i32 0, !dbg !405
  store [0 x { [0 x i8]*, i64 }]* %pieces.0, [0 x { [0 x i8]*, i64 }]** %11, align 8, !dbg !405
  %12 = getelementptr inbounds { [0 x { [0 x i8]*, i64 }]*, i64 }, { [0 x { [0 x i8]*, i64 }]*, i64 }* %10, i32 0, i32 1, !dbg !405
  store i64 %pieces.1, i64* %12, align 8, !dbg !405
  %13 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %0, i32 0, i32 1, !dbg !405
  %14 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %_23, i32 0, i32 0, !dbg !405
  %15 = load i64*, i64** %14, align 8, !dbg !405
  %16 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %_23, i32 0, i32 1, !dbg !405
  %17 = load i64, i64* %16, align 8, !dbg !405
  %18 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %13, i32 0, i32 0, !dbg !405
  store i64* %15, i64** %18, align 8, !dbg !405
  %19 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %13, i32 0, i32 1, !dbg !405
  store i64 %17, i64* %19, align 8, !dbg !405
  %20 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %0, i32 0, i32 2, !dbg !405
  %21 = getelementptr inbounds { [0 x { i8*, i64* }]*, i64 }, { [0 x { i8*, i64* }]*, i64 }* %20, i32 0, i32 0, !dbg !405
  store [0 x { i8*, i64* }]* %args.0, [0 x { i8*, i64* }]** %21, align 8, !dbg !405
  %22 = getelementptr inbounds { [0 x { i8*, i64* }]*, i64 }, { [0 x { i8*, i64* }]*, i64 }* %20, i32 0, i32 1, !dbg !405
  store i64 %args.1, i64* %22, align 8, !dbg !405
  ret void, !dbg !406

bb4:                                              ; preds = %bb3
; call core::fmt::Arguments::new_v1
  call void @core::fmt::Arguments::new_v1(%"core::fmt::Arguments"* noalias nocapture noundef sret(%"core::fmt::Arguments") dereferenceable(48) %_15, [0 x { [0 x i8]*, i64 }]* noundef nonnull align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc17 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* noundef nonnull align 8 bitcast (<{ [0 x i8] }>* @alloc19 to [0 x { i8*, i64* }]*), i64 0), !dbg !407
  br label %bb5, !dbg !407

bb5:                                              ; preds = %bb4
; call core::panicking::panic_fmt
  call void @core::panicking::panic_fmt(%"core::fmt::Arguments"* noalias nocapture noundef dereferenceable(48) %_15, %"core::panic::location::Location"* noundef align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc60 to %"core::panic::location::Location"*)) #7, !dbg !407
  unreachable, !dbg !407
}

; std::sys::unix::process::process_common::ExitCode::as_i32
; Function Attrs: inlinehint uwtable
define internal i32 @std::sys::unix::process::process_common::ExitCode::as_i32(i8* noundef align 1 dereferenceable(1) %self) unnamed_addr #0 !dbg !408 {
start:
  %self.dbg.spill = alloca i8*, align 8
  store i8* %self, i8** %self.dbg.spill, align 8
  call void @llvm.dbg.declare(metadata i8** %self.dbg.spill, metadata !414, metadata !DIExpression()), !dbg !415
  %_2 = load i8, i8* %self, align 1, !dbg !416
  %0 = zext i8 %_2 to i32, !dbg !416
  ret i32 %0, !dbg !417
}

; core::fmt::ArgumentV1::new_display
; Function Attrs: inlinehint uwtable
define internal { i8*, i64* } @core::fmt::ArgumentV1::new_display({ [0 x i8]*, i64 }* noundef align 8 dereferenceable(16) %x) unnamed_addr #0 !dbg !418 {
start:
  %x.dbg.spill = alloca { [0 x i8]*, i64 }*, align 8
  store { [0 x i8]*, i64 }* %x, { [0 x i8]*, i64 }** %x.dbg.spill, align 8
  call void @llvm.dbg.declare(metadata { [0 x i8]*, i64 }** %x.dbg.spill, metadata !422, metadata !DIExpression()), !dbg !423
; call core::fmt::ArgumentV1::new
  %0 = call { i8*, i64* } @core::fmt::ArgumentV1::new({ [0 x i8]*, i64 }* noundef align 8 dereferenceable(16) %x, i1 ({ [0 x i8]*, i64 }*, %"core::fmt::Formatter"*)* nonnull @"<&T as core::fmt::Display>::fmt"), !dbg !424
  %1 = extractvalue { i8*, i64* } %0, 0, !dbg !424
  %2 = extractvalue { i8*, i64* } %0, 1, !dbg !424
  br label %bb1, !dbg !424

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64* } undef, i8* %1, 0, !dbg !425
  %4 = insertvalue { i8*, i64* } %3, i64* %2, 1, !dbg !425
  ret { i8*, i64* } %4, !dbg !425
}

; <&T as core::fmt::Display>::fmt
; Function Attrs: uwtable
define internal noundef zeroext i1 @"<&T as core::fmt::Display>::fmt"({ [0 x i8]*, i64 }* noundef align 8 dereferenceable(16) %self, %"core::fmt::Formatter"* noundef align 8 dereferenceable(64) %f) unnamed_addr #1 !dbg !426 {
start:
  %f.dbg.spill = alloca %"core::fmt::Formatter"*, align 8
  %self.dbg.spill = alloca { [0 x i8]*, i64 }*, align 8
  store { [0 x i8]*, i64 }* %self, { [0 x i8]*, i64 }** %self.dbg.spill, align 8
  call void @llvm.dbg.declare(metadata { [0 x i8]*, i64 }** %self.dbg.spill, metadata !429, metadata !DIExpression()), !dbg !433
  store %"core::fmt::Formatter"* %f, %"core::fmt::Formatter"** %f.dbg.spill, align 8
  call void @llvm.dbg.declare(metadata %"core::fmt::Formatter"** %f.dbg.spill, metadata !430, metadata !DIExpression()), !dbg !434
  %0 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %self, i32 0, i32 0, !dbg !435
  %_4.0 = load [0 x i8]*, [0 x i8]** %0, align 8, !dbg !435, !nonnull !23
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %self, i32 0, i32 1, !dbg !435
  %_4.1 = load i64, i64* %1, align 8, !dbg !435
; call <str as core::fmt::Display>::fmt
  %2 = call noundef zeroext i1 @"<str as core::fmt::Display>::fmt"([0 x i8]* noundef nonnull align 1 %_4.0, i64 %_4.1, %"core::fmt::Formatter"* noundef align 8 dereferenceable(64) %f), !dbg !436
  br label %bb1, !dbg !436

bb1:                                              ; preds = %start
  ret i1 %2, !dbg !437
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #1

; std::io::stdio::_print
; Function Attrs: uwtable
declare void @std::io::stdio::_print(%"core::fmt::Arguments"* noalias nocapture noundef dereferenceable(48)) unnamed_addr #1

; std::rt::lang_start_internal
; Function Attrs: uwtable
declare i64 @std::rt::lang_start_internal({}* noundef nonnull align 1, [3 x i64]* noundef align 8 dereferenceable(24), i64, i8**) unnamed_addr #1

; core::panicking::panic_fmt
; Function Attrs: cold noinline noreturn uwtable
declare void @core::panicking::panic_fmt(%"core::fmt::Arguments"* noalias nocapture noundef dereferenceable(48), %"core::panic::location::Location"* noundef align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; <str as core::fmt::Display>::fmt
; Function Attrs: uwtable
declare noundef zeroext i1 @"<str as core::fmt::Display>::fmt"([0 x i8]* noundef nonnull align 1, i64, %"core::fmt::Formatter"* noundef align 8 dereferenceable(64)) unnamed_addr #1

define i32 @main(i32 %0, i8** %1) unnamed_addr #6 {
top:
  %2 = sext i32 %0 to i64
; call std::rt::lang_start
  %3 = call i64 @std::rt::lang_start(void ()* @test_rust::main, i64 %2, i8** %1)
  %4 = trunc i64 %3 to i32
  ret i32 %4
}

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { noinline uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #7 = { noreturn }

!llvm.module.flags = !{!24, !25, !26, !27}
!llvm.dbg.cu = !{!28}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "<std::rt::lang_start::{closure_env#0}<()> as core::ops::function::Fn<()>>::{vtable}", scope: null, file: !2, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "<unknown>", directory: "")
!3 = !DICompositeType(tag: DW_TAG_structure_type, name: "<std::rt::lang_start::{closure_env#0}<()> as core::ops::function::Fn<()>>::{vtable_type}", file: !2, size: 384, align: 64, flags: DIFlagArtificial, elements: !4, vtableHolder: !14, templateParams: !23, identifier: "<std::rt::lang_start::{closure_env#0}<()> as core::ops::function::Fn<()>>::{vtable_type}")
!4 = !{!5, !8, !10, !11, !12, !13}
!5 = !DIDerivedType(tag: DW_TAG_member, name: "drop_in_place", scope: !3, file: !2, baseType: !6, size: 64, align: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const ()", baseType: !7, size: 64, align: 64, dwarfAddressSpace: 0)
!7 = !DIBasicType(name: "()", encoding: DW_ATE_unsigned)
!8 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3, file: !2, baseType: !9, size: 64, align: 64, offset: 64)
!9 = !DIBasicType(name: "usize", size: 64, encoding: DW_ATE_unsigned)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !3, file: !2, baseType: !9, size: 64, align: 64, offset: 128)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "__method3", scope: !3, file: !2, baseType: !6, size: 64, align: 64, offset: 192)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "__method4", scope: !3, file: !2, baseType: !6, size: 64, align: 64, offset: 256)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "__method5", scope: !3, file: !2, baseType: !6, size: 64, align: 64, offset: 320)
!14 = !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}<()>", scope: !15, file: !2, size: 64, align: 64, elements: !18, templateParams: !23, identifier: "65b94f8f528603bb3efbbd0c03f15ff3")
!15 = !DINamespace(name: "lang_start", scope: !16)
!16 = !DINamespace(name: "rt", scope: !17)
!17 = !DINamespace(name: "std", scope: null)
!18 = !{!19}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "main", scope: !14, file: !2, baseType: !20, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "fn()", baseType: !21, size: 64, align: 64, dwarfAddressSpace: 0)
!21 = !DISubroutineType(types: !22)
!22 = !{null}
!23 = !{}
!24 = !{i32 7, !"PIC Level", i32 2}
!25 = !{i32 7, !"PIE Level", i32 2}
!26 = !{i32 2, !"Dwarf Version", i32 2}
!27 = !{i32 2, !"Debug Info Version", i32 3}
!28 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !29, producer: "clang LLVM (rustc version 1.60.0 (7737e0b5c 2022-04-04))", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !30, globals: !47)
!29 = !DIFile(filename: "../test/test_data/test_rust.rs/@/test_rust.3b402897-cgu.0", directory: "/Users/rkrsn/workspace/raptor-oss/llvm-slicer/build")
!30 = !{!31, !38}
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Result", scope: !32, file: !2, baseType: !34, size: 8, align: 8, flags: DIFlagEnumClass, elements: !35)
!32 = !DINamespace(name: "result", scope: !33)
!33 = !DINamespace(name: "core", scope: null)
!34 = !DIBasicType(name: "u8", size: 8, encoding: DW_ATE_unsigned)
!35 = !{!36, !37}
!36 = !DIEnumerator(name: "Ok", value: 0)
!37 = !DIEnumerator(name: "Err", value: 1)
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Alignment", scope: !39, file: !2, baseType: !34, size: 8, align: 8, flags: DIFlagEnumClass, elements: !42)
!39 = !DINamespace(name: "v1", scope: !40)
!40 = !DINamespace(name: "rt", scope: !41)
!41 = !DINamespace(name: "fmt", scope: !33)
!42 = !{!43, !44, !45, !46}
!43 = !DIEnumerator(name: "Left", value: 0)
!44 = !DIEnumerator(name: "Right", value: 1)
!45 = !DIEnumerator(name: "Center", value: 2)
!46 = !DIEnumerator(name: "Unknown", value: 3)
!47 = !{!0}
!48 = distinct !DISubprogram(name: "call_once<std::rt::lang_start::{closure_env#0}<()>, ()>", linkageName: "core::ops::function::FnOnce::call_once{{vtable.shim}}", scope: !50, file: !49, line: 227, type: !53, scopeLine: 227, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !28, templateParams: !60, retainedNodes: !57)
!49 = !DIFile(filename: "/rustc/7737e0b5c4103216d6fd8cf941b7ab9bdbaace7c/library/core/src/ops/function.rs", directory: "", checksumkind: CSK_MD5, checksum: "1a40c014f8a7b8b7cd612b461a47e902")
!50 = !DINamespace(name: "FnOnce", scope: !51)
!51 = !DINamespace(name: "function", scope: !52)
!52 = !DINamespace(name: "ops", scope: !33)
!53 = !DISubroutineType(types: !54)
!54 = !{!55, !56}
!55 = !DIBasicType(name: "i32", size: 32, encoding: DW_ATE_signed)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut std::rt::lang_start::{closure_env#0}<()>", baseType: !14, size: 64, align: 64, dwarfAddressSpace: 0)
!57 = !{!58, !59}
!58 = !DILocalVariable(arg: 1, scope: !48, file: !49, line: 227, type: !56)
!59 = !DILocalVariable(arg: 2, scope: !48, file: !49, line: 227, type: !7)
!60 = !{!61, !62}
!61 = !DITemplateTypeParameter(name: "Self", type: !14)
!62 = !DITemplateTypeParameter(name: "Args", type: !7)
!63 = !DILocation(line: 227, column: 5, scope: !48)
!64 = distinct !DISubprogram(name: "call_once<std::rt::lang_start::{closure_env#0}<()>, ()>", linkageName: "core::ops::function::FnOnce::call_once", scope: !50, file: !49, line: 227, type: !65, scopeLine: 227, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !28, templateParams: !60, retainedNodes: !67)
!65 = !DISubroutineType(types: !66)
!66 = !{!55, !14}
!67 = !{!68, !69}
!68 = !DILocalVariable(arg: 1, scope: !64, file: !49, line: 227, type: !14)
!69 = !DILocalVariable(arg: 2, scope: !64, file: !49, line: 227, type: !7)
!70 = !DILocation(line: 227, column: 5, scope: !64)
!71 = distinct !DISubprogram(name: "call_once<fn(), ()>", linkageName: "core::ops::function::FnOnce::call_once", scope: !50, file: !49, line: 227, type: !72, scopeLine: 227, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !28, templateParams: !77, retainedNodes: !74)
!72 = !DISubroutineType(types: !73)
!73 = !{null, !20}
!74 = !{!75, !76}
!75 = !DILocalVariable(arg: 1, scope: !71, file: !49, line: 227, type: !20)
!76 = !DILocalVariable(arg: 2, scope: !71, file: !49, line: 227, type: !7)
!77 = !{!78, !62}
!78 = !DITemplateTypeParameter(name: "Self", type: !20)
!79 = !DILocation(line: 227, column: 5, scope: !71)
!80 = distinct !DISubprogram(name: "drop_in_place<std::rt::lang_start::{closure_env#0}<()>>", linkageName: "core::ptr::drop_in_place<std::rt::lang_start<()>::{{closure}}>", scope: !82, file: !81, line: 188, type: !83, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !28, templateParams: !87, retainedNodes: !85)
!81 = !DIFile(filename: "/rustc/7737e0b5c4103216d6fd8cf941b7ab9bdbaace7c/library/core/src/ptr/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "0592540d568e762cd458f12fa2315832")
!82 = !DINamespace(name: "ptr", scope: !33)
!83 = !DISubroutineType(types: !84)
!84 = !{null, !56}
!85 = !{!86}
!86 = !DILocalVariable(arg: 1, scope: !80, file: !81, line: 188, type: !56)
!87 = !{!88}
!88 = !DITemplateTypeParameter(name: "T", type: !14)
!89 = !DILocation(line: 188, column: 1, scope: !80)
!90 = distinct !DISubprogram(name: "is_naked", linkageName: "test_rust::Sheep::is_naked", scope: !92, file: !91, line: 18, type: !103, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !28, templateParams: !23, retainedNodes: !106)
!91 = !DIFile(filename: "../test/test_data/test_rust.rs", directory: "/Users/rkrsn/workspace/raptor-oss/llvm-slicer/build", checksumkind: CSK_MD5, checksum: "4b8a2a3f8e4edf84ae506ab855e598f5")
!92 = !DICompositeType(tag: DW_TAG_structure_type, name: "Sheep", scope: !93, file: !2, size: 192, align: 64, elements: !94, templateParams: !23, identifier: "9014723e6fc2dc0aab022cd3301afb7")
!93 = !DINamespace(name: "test_rust", scope: null)
!94 = !{!95, !97}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "naked", scope: !92, file: !2, baseType: !96, size: 8, align: 8, offset: 128)
!96 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !92, file: !2, baseType: !98, size: 128, align: 64)
!98 = !DICompositeType(tag: DW_TAG_structure_type, name: "&str", file: !2, size: 128, align: 64, elements: !99, templateParams: !23, identifier: "84eec819988617519061e0b609a72fe3")
!99 = !{!100, !102}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !98, file: !2, baseType: !101, size: 64, align: 64)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64, dwarfAddressSpace: 0)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !98, file: !2, baseType: !9, size: 64, align: 64, offset: 64)
!103 = !DISubroutineType(types: !104)
!104 = !{!96, !105}
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&test_rust::Sheep", baseType: !92, size: 64, align: 64, dwarfAddressSpace: 0)
!106 = !{!107}
!107 = !DILocalVariable(name: "self", arg: 1, scope: !90, file: !91, line: 18, type: !105)
!108 = !DILocation(line: 18, column: 17, scope: !90)
!109 = !DILocation(line: 19, column: 9, scope: !90)
!110 = !{i8 0, i8 2}
!111 = !DILocation(line: 20, column: 6, scope: !90)
!112 = distinct !DISubprogram(name: "shear", linkageName: "test_rust::Sheep::shear", scope: !92, file: !91, line: 22, type: !113, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !28, templateParams: !23, retainedNodes: !116)
!113 = !DISubroutineType(types: !114)
!114 = !{null, !115}
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut test_rust::Sheep", baseType: !92, size: 64, align: 64, dwarfAddressSpace: 0)
!116 = !{!117}
!117 = !DILocalVariable(name: "self", arg: 1, scope: !112, file: !91, line: 22, type: !115)
!118 = !DILocation(line: 22, column: 14, scope: !112)
!119 = !DILocation(line: 23, column: 12, scope: !112)
!120 = !DILocation(line: 27, column: 13, scope: !112)
!121 = !DILocation(line: 25, column: 48, scope: !112)
!122 = !DILocation(line: 25, column: 13, scope: !112)
!123 = !DILocation(line: 31, column: 6, scope: !112)
!124 = !DILocation(line: 29, column: 13, scope: !112)
!125 = !DILocation(line: 23, column: 9, scope: !112)
!126 = distinct !DISubprogram(name: "new", linkageName: "<test_rust::Sheep as test_rust::Animal>::new", scope: !127, file: !91, line: 37, type: !128, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !28, templateParams: !23, retainedNodes: !130)
!127 = !DINamespace(name: "{impl#1}", scope: !93)
!128 = !DISubroutineType(types: !129)
!129 = !{!92, !98}
!130 = !{!131}
!131 = !DILocalVariable(name: "name", arg: 1, scope: !126, file: !91, line: 37, type: !98)
!132 = !DILocation(line: 37, column: 12, scope: !126)
!133 = !DILocation(line: 38, column: 9, scope: !126)
!134 = !DILocation(line: 39, column: 6, scope: !126)
!135 = distinct !DISubprogram(name: "name", linkageName: "<test_rust::Sheep as test_rust::Animal>::name", scope: !127, file: !91, line: 41, type: !136, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !28, templateParams: !23, retainedNodes: !138)
!136 = !DISubroutineType(types: !137)
!137 = !{!98, !105}
!138 = !{!139}
!139 = !DILocalVariable(name: "self", arg: 1, scope: !135, file: !91, line: 41, type: !105)
!140 = !DILocation(line: 41, column: 13, scope: !135)
!141 = !DILocation(line: 42, column: 9, scope: !135)
!142 = !DILocation(line: 43, column: 6, scope: !135)
!143 = distinct !DISubprogram(name: "noise", linkageName: "<test_rust::Sheep as test_rust::Animal>::noise", scope: !127, file: !91, line: 45, type: !136, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !28, templateParams: !23, retainedNodes: !144)
!144 = !{!145}
!145 = !DILocalVariable(name: "self", arg: 1, scope: !143, file: !91, line: 45, type: !105)
!146 = !DILocation(line: 45, column: 14, scope: !143)
!147 = !DILocation(line: 46, column: 12, scope: !143)
!148 = !DILocation(line: 49, column: 13, scope: !143)
!149 = !DILocation(line: 46, column: 9, scope: !143)
!150 = !DILocation(line: 47, column: 13, scope: !143)
!151 = !DILocation(line: 51, column: 6, scope: !143)
!152 = distinct !DISubprogram(name: "talk", linkageName: "<test_rust::Sheep as test_rust::Animal>::talk", scope: !127, file: !91, line: 54, type: !153, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !28, templateParams: !23, retainedNodes: !155)
!153 = !DISubroutineType(types: !154)
!154 = !{null, !105}
!155 = !{!156}
!156 = !DILocalVariable(name: "self", arg: 1, scope: !152, file: !91, line: 54, type: !105)
!157 = !DILocation(line: 54, column: 13, scope: !152)
!158 = !DILocation(line: 56, column: 9, scope: !152)
!159 = !DILocation(line: 56, column: 56, scope: !152)
!160 = !DILocation(line: 57, column: 6, scope: !152)
!161 = distinct !DISubprogram(name: "main", linkageName: "test_rust::main", scope: !93, file: !91, line: 60, type: !21, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagMainSubprogram, unit: !28, templateParams: !23, retainedNodes: !162)
!162 = !{!163}
!163 = !DILocalVariable(name: "dolly", scope: !164, file: !91, line: 62, type: !92, align: 8)
!164 = distinct !DILexicalBlock(scope: !161, file: !91, line: 62, column: 5)
!165 = !DILocation(line: 62, column: 9, scope: !164)
!166 = !DILocation(line: 62, column: 28, scope: !161)
!167 = !DILocation(line: 65, column: 5, scope: !164)
!168 = !DILocation(line: 66, column: 5, scope: !164)
!169 = !DILocation(line: 67, column: 5, scope: !164)
!170 = !DILocation(line: 68, column: 2, scope: !171)
!171 = !DILexicalBlockFile(scope: !161, file: !91, discriminator: 0)
!172 = distinct !DISubprogram(name: "black_box<()>", linkageName: "core::hint::black_box", scope: !174, file: !173, line: 173, type: !175, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !28, templateParams: !179, retainedNodes: !177)
!173 = !DIFile(filename: "/rustc/7737e0b5c4103216d6fd8cf941b7ab9bdbaace7c/library/core/src/hint.rs", directory: "", checksumkind: CSK_MD5, checksum: "bf95e3081dc32061fc222d03331d8091")
!174 = !DINamespace(name: "hint", scope: !33)
!175 = !DISubroutineType(types: !176)
!176 = !{null, !7}
!177 = !{!178}
!178 = !DILocalVariable(name: "dummy", arg: 1, scope: !172, file: !173, line: 173, type: !7)
!179 = !{!180}
!180 = !DITemplateTypeParameter(name: "T", type: !7)
!181 = !DILocation(line: 173, column: 27, scope: !172)
!182 = !DILocation(line: 174, column: 5, scope: !172)
!183 = !{i32 3186872}
!184 = !DILocation(line: 175, column: 2, scope: !172)
!185 = distinct !DISubprogram(name: "to_i32", linkageName: "std::process::ExitCode::to_i32", scope: !187, file: !186, line: 1689, type: !198, scopeLine: 1689, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !28, templateParams: !23, retainedNodes: !200)
!186 = !DIFile(filename: "/rustc/7737e0b5c4103216d6fd8cf941b7ab9bdbaace7c/library/std/src/process.rs", directory: "", checksumkind: CSK_MD5, checksum: "ee461ff083257e8efc8b48e1d9bdd68f")
!187 = !DICompositeType(tag: DW_TAG_structure_type, name: "ExitCode", scope: !188, file: !2, size: 8, align: 8, elements: !189, templateParams: !23, identifier: "bec39850ddc71e69685e2c00f78c81e")
!188 = !DINamespace(name: "process", scope: !17)
!189 = !{!190}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !187, file: !2, baseType: !191, size: 8, align: 8)
!191 = !DICompositeType(tag: DW_TAG_structure_type, name: "ExitCode", scope: !192, file: !2, size: 8, align: 8, elements: !196, templateParams: !23, identifier: "c9a7c03b2a958f7d18c2fc3bc942bbc9")
!192 = !DINamespace(name: "process_common", scope: !193)
!193 = !DINamespace(name: "process", scope: !194)
!194 = !DINamespace(name: "unix", scope: !195)
!195 = !DINamespace(name: "sys", scope: !17)
!196 = !{!197}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !191, file: !2, baseType: !34, size: 8, align: 8)
!198 = !DISubroutineType(types: !199)
!199 = !{!55, !187}
!200 = !{!201}
!201 = !DILocalVariable(name: "self", arg: 1, scope: !185, file: !186, line: 1689, type: !187)
!202 = !DILocation(line: 1689, column: 19, scope: !185)
!203 = !DILocation(line: 1690, column: 9, scope: !185)
!204 = !DILocation(line: 1691, column: 6, scope: !185)
!205 = distinct !DISubprogram(name: "report", linkageName: "<() as std::process::Termination>::report", scope: !206, file: !186, line: 2048, type: !207, scopeLine: 2048, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !28, templateParams: !23, retainedNodes: !209)
!206 = !DINamespace(name: "{impl#50}", scope: !188)
!207 = !DISubroutineType(types: !208)
!208 = !{!187, !7}
!209 = !{!210}
!210 = !DILocalVariable(name: "self", arg: 1, scope: !205, file: !186, line: 2048, type: !7)
!211 = !DILocation(line: 2048, column: 15, scope: !205)
!212 = !DILocation(line: 2049, column: 9, scope: !205)
!213 = !DILocation(line: 2050, column: 6, scope: !205)
!214 = distinct !DISubprogram(name: "report", linkageName: "<std::process::ExitCode as std::process::Termination>::report", scope: !215, file: !186, line: 2090, type: !216, scopeLine: 2090, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !28, templateParams: !23, retainedNodes: !218)
!215 = !DINamespace(name: "{impl#55}", scope: !188)
!216 = !DISubroutineType(types: !217)
!217 = !{!187, !187}
!218 = !{!219}
!219 = !DILocalVariable(name: "self", arg: 1, scope: !214, file: !186, line: 2090, type: !187)
!220 = !DILocation(line: 2090, column: 15, scope: !214)
!221 = !DILocation(line: 2092, column: 6, scope: !214)
!222 = distinct !DISubprogram(name: "lang_start<()>", linkageName: "std::rt::lang_start", scope: !16, file: !223, line: 139, type: !224, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !28, templateParams: !179, retainedNodes: !229)
!223 = !DIFile(filename: "/rustc/7737e0b5c4103216d6fd8cf941b7ab9bdbaace7c/library/std/src/rt.rs", directory: "", checksumkind: CSK_MD5, checksum: "53ba40c54b421907f2e3ab22fb96d5b4")
!224 = !DISubroutineType(types: !225)
!225 = !{!226, !20, !226, !227}
!226 = !DIBasicType(name: "isize", size: 64, encoding: DW_ATE_signed)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const *const u8", baseType: !228, size: 64, align: 64, dwarfAddressSpace: 0)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const u8", baseType: !34, size: 64, align: 64, dwarfAddressSpace: 0)
!229 = !{!230, !231, !232, !233}
!230 = !DILocalVariable(name: "main", arg: 1, scope: !222, file: !223, line: 140, type: !20)
!231 = !DILocalVariable(name: "argc", arg: 2, scope: !222, file: !223, line: 141, type: !226)
!232 = !DILocalVariable(name: "argv", arg: 3, scope: !222, file: !223, line: 142, type: !227)
!233 = !DILocalVariable(name: "v", scope: !234, file: !223, line: 144, type: !226, align: 8)
!234 = distinct !DILexicalBlock(scope: !222, file: !223, line: 144, column: 5)
!235 = !DILocation(line: 140, column: 5, scope: !222)
!236 = !DILocation(line: 141, column: 5, scope: !222)
!237 = !DILocation(line: 142, column: 5, scope: !222)
!238 = !DILocation(line: 145, column: 10, scope: !222)
!239 = !DILocation(line: 145, column: 9, scope: !222)
!240 = !DILocation(line: 144, column: 17, scope: !222)
!241 = !DILocation(line: 144, column: 12, scope: !222)
!242 = !DILocation(line: 144, column: 12, scope: !234)
!243 = !DILocation(line: 150, column: 2, scope: !222)
!244 = distinct !DISubprogram(name: "{closure#0}<()>", linkageName: "std::rt::lang_start::{{closure}}", scope: !15, file: !223, line: 145, type: !245, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !28, templateParams: !179, retainedNodes: !248)
!245 = !DISubroutineType(types: !246)
!246 = !{!55, !247}
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&std::rt::lang_start::{closure_env#0}<()>", baseType: !14, size: 64, align: 64, dwarfAddressSpace: 0)
!248 = !{!249}
!249 = !DILocalVariable(name: "main", scope: !244, file: !223, line: 140, type: !20, align: 8)
!250 = !DILocation(line: 140, column: 5, scope: !244)
!251 = !DILocation(line: 145, column: 77, scope: !244)
!252 = !DILocation(line: 145, column: 18, scope: !244)
!253 = !DILocation(line: 145, column: 100, scope: !244)
!254 = distinct !DISubprogram(name: "__rust_begin_short_backtrace<fn(), ()>", linkageName: "std::sys_common::backtrace::__rust_begin_short_backtrace", scope: !256, file: !255, line: 118, type: !72, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !28, templateParams: !262, retainedNodes: !258)
!255 = !DIFile(filename: "/rustc/7737e0b5c4103216d6fd8cf941b7ab9bdbaace7c/library/std/src/sys_common/backtrace.rs", directory: "", checksumkind: CSK_MD5, checksum: "0fa868f8cc86ab35ce9635f981490e7d")
!256 = !DINamespace(name: "backtrace", scope: !257)
!257 = !DINamespace(name: "sys_common", scope: !17)
!258 = !{!259, !260}
!259 = !DILocalVariable(name: "f", arg: 1, scope: !254, file: !255, line: 118, type: !20)
!260 = !DILocalVariable(name: "result", scope: !261, file: !255, line: 122, type: !7, align: 1)
!261 = distinct !DILexicalBlock(scope: !254, file: !255, line: 122, column: 5)
!262 = !{!263, !180}
!263 = !DITemplateTypeParameter(name: "F", type: !20)
!264 = !DILocation(line: 122, column: 9, scope: !261)
!265 = !DILocation(line: 118, column: 43, scope: !254)
!266 = !DILocation(line: 122, column: 18, scope: !254)
!267 = !DILocation(line: 125, column: 5, scope: !261)
!268 = !DILocation(line: 128, column: 2, scope: !254)
!269 = !DILocation(line: 128, column: 1, scope: !254)
!270 = !DILocation(line: 118, column: 1, scope: !254)
!271 = distinct !DISubprogram(name: "new<&str>", linkageName: "core::fmt::ArgumentV1::new", scope: !273, file: !272, line: 326, type: !318, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !28, templateParams: !327, retainedNodes: !324)
!272 = !DIFile(filename: "/rustc/7737e0b5c4103216d6fd8cf941b7ab9bdbaace7c/library/core/src/fmt/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "7d486092cd3957d561caa81fafa9cc68")
!273 = !DICompositeType(tag: DW_TAG_structure_type, name: "ArgumentV1", scope: !41, file: !2, size: 128, align: 64, elements: !274, templateParams: !23, identifier: "bf27cbeede3a5264a55a4b0e65f8b1f8")
!274 = !{!275, !278}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !273, file: !2, baseType: !276, size: 64, align: 64)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::fmt::{extern#0}::Opaque", baseType: !277, size: 64, align: 64, dwarfAddressSpace: 0)
!277 = !DICompositeType(tag: DW_TAG_structure_type, name: "Opaque", file: !2, align: 8, elements: !23, identifier: "f0929237c760eb209a93fa1fd63d46ab")
!278 = !DIDerivedType(tag: DW_TAG_member, name: "formatter", scope: !273, file: !2, baseType: !279, size: 64, align: 64, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "fn(&core::fmt::{extern#0}::Opaque, &mut core::fmt::Formatter) -> core::result::Result<(), core::fmt::Error>", baseType: !280, size: 64, align: 64, dwarfAddressSpace: 0)
!280 = !DISubroutineType(types: !281)
!281 = !{!31, !276, !282}
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::fmt::Formatter", baseType: !283, size: 64, align: 64, dwarfAddressSpace: 0)
!283 = !DICompositeType(tag: DW_TAG_structure_type, name: "Formatter", scope: !41, file: !2, size: 512, align: 64, elements: !284, templateParams: !23, identifier: "1afa1cdfc964d1c9d2228387756cf8f")
!284 = !{!285, !287, !289, !290, !306, !307}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !283, file: !2, baseType: !286, size: 32, align: 32, offset: 384)
!286 = !DIBasicType(name: "u32", size: 32, encoding: DW_ATE_unsigned)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !283, file: !2, baseType: !288, size: 32, align: 32, offset: 416)
!288 = !DIBasicType(name: "char", size: 32, encoding: DW_ATE_unsigned_char)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !283, file: !2, baseType: !38, size: 8, align: 8, offset: 448)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !283, file: !2, baseType: !291, size: 128, align: 64)
!291 = !DICompositeType(tag: DW_TAG_structure_type, name: "Option<usize>", scope: !292, file: !2, size: 128, align: 64, elements: !293, identifier: "98f8e891b302c09c77c2118a85a82629")
!292 = !DINamespace(name: "option", scope: !33)
!293 = !{!294}
!294 = !DICompositeType(tag: DW_TAG_variant_part, scope: !292, file: !2, size: 128, align: 64, elements: !295, templateParams: !298, identifier: "98f8e891b302c09c77c2118a85a82629_variant_part", discriminator: !304)
!295 = !{!296, !300}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !294, file: !2, baseType: !297, size: 128, align: 64, extraData: i64 0)
!297 = !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !291, file: !2, size: 128, align: 64, elements: !23, templateParams: !298, identifier: "98f8e891b302c09c77c2118a85a82629::None")
!298 = !{!299}
!299 = !DITemplateTypeParameter(name: "T", type: !9)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !294, file: !2, baseType: !301, size: 128, align: 64, extraData: i64 1)
!301 = !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !291, file: !2, size: 128, align: 64, elements: !302, templateParams: !298, identifier: "98f8e891b302c09c77c2118a85a82629::Some")
!302 = !{!303}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !301, file: !2, baseType: !9, size: 64, align: 64, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, scope: !292, file: !2, baseType: !305, size: 64, align: 64, flags: DIFlagArtificial)
!305 = !DIBasicType(name: "u64", size: 64, encoding: DW_ATE_unsigned)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !283, file: !2, baseType: !291, size: 128, align: 64, offset: 128)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !283, file: !2, baseType: !308, size: 128, align: 64, offset: 256)
!308 = !DICompositeType(tag: DW_TAG_structure_type, name: "&mut dyn core::fmt::Write", file: !2, size: 128, align: 64, elements: !309, templateParams: !23, identifier: "caf7c9638b00fd617d3c4fbb3206f8b5")
!309 = !{!310, !313}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !308, file: !2, baseType: !311, size: 64, align: 64)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64, align: 64, dwarfAddressSpace: 0)
!312 = !DICompositeType(tag: DW_TAG_structure_type, name: "dyn core::fmt::Write", file: !2, align: 8, elements: !23, templateParams: !23, identifier: "ace84f06a9adcdb547edf821249ba8b7")
!313 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !308, file: !2, baseType: !314, size: 64, align: 64, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&[usize; 3]", baseType: !315, size: 64, align: 64, dwarfAddressSpace: 0)
!315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 192, align: 64, elements: !316)
!316 = !{!317}
!317 = !DISubrange(count: 3, lowerBound: 0)
!318 = !DISubroutineType(types: !319)
!319 = !{!273, !320, !321}
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&&str", baseType: !98, size: 64, align: 64, dwarfAddressSpace: 0)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "fn(&&str, &mut core::fmt::Formatter) -> core::result::Result<(), core::fmt::Error>", baseType: !322, size: 64, align: 64, dwarfAddressSpace: 0)
!322 = !DISubroutineType(types: !323)
!323 = !{!31, !320, !282}
!324 = !{!325, !326}
!325 = !DILocalVariable(name: "x", arg: 1, scope: !271, file: !272, line: 326, type: !320)
!326 = !DILocalVariable(name: "f", arg: 2, scope: !271, file: !272, line: 326, type: !321)
!327 = !{!328}
!328 = !DITemplateTypeParameter(name: "T", type: !98)
!329 = !DILocation(line: 326, column: 23, scope: !271)
!330 = !DILocation(line: 326, column: 33, scope: !271)
!331 = !DILocation(line: 335, column: 42, scope: !271)
!332 = !DILocation(line: 335, column: 68, scope: !271)
!333 = !DILocation(line: 335, column: 18, scope: !271)
!334 = !DILocation(line: 336, column: 6, scope: !271)
!335 = distinct !DISubprogram(name: "new_v1", linkageName: "core::fmt::Arguments::new_v1", scope: !336, file: !272, line: 383, type: !394, scopeLine: 383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !28, templateParams: !23, retainedNodes: !396)
!336 = !DICompositeType(tag: DW_TAG_structure_type, name: "Arguments", scope: !41, file: !2, size: 384, align: 64, elements: !337, templateParams: !23, identifier: "6590b58b44b185fb6f9f3419375e0986")
!337 = !{!338, !344, !388}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "pieces", scope: !336, file: !2, baseType: !339, size: 128, align: 64)
!339 = !DICompositeType(tag: DW_TAG_structure_type, name: "&[&str]", file: !2, size: 128, align: 64, elements: !340, templateParams: !23, identifier: "a673d89da0bdcf4d8c9ca87ae2c56d84")
!340 = !{!341, !343}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !339, file: !2, baseType: !342, size: 64, align: 64)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64, align: 64, dwarfAddressSpace: 0)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !339, file: !2, baseType: !9, size: 64, align: 64, offset: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !336, file: !2, baseType: !345, size: 128, align: 64, offset: 128)
!345 = !DICompositeType(tag: DW_TAG_structure_type, name: "Option<&[core::fmt::rt::v1::Argument]>", scope: !292, file: !2, size: 128, align: 64, elements: !346, identifier: "15c40ae6fa612036aaf0515d0012e61d")
!346 = !{!347}
!347 = !DICompositeType(tag: DW_TAG_variant_part, scope: !292, file: !2, size: 128, align: 64, elements: !348, templateParams: !351, identifier: "15c40ae6fa612036aaf0515d0012e61d_variant_part", discriminator: !304)
!348 = !{!349, !384}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !347, file: !2, baseType: !350, size: 128, align: 64, extraData: i64 0)
!350 = !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !345, file: !2, size: 128, align: 64, elements: !23, templateParams: !351, identifier: "15c40ae6fa612036aaf0515d0012e61d::None")
!351 = !{!352}
!352 = !DITemplateTypeParameter(name: "T", type: !353)
!353 = !DICompositeType(tag: DW_TAG_structure_type, name: "&[core::fmt::rt::v1::Argument]", file: !2, size: 128, align: 64, elements: !354, templateParams: !23, identifier: "287ac05ecc676727a0ec0775483732c9")
!354 = !{!355, !383}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !353, file: !2, baseType: !356, size: 64, align: 64)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64, align: 64, dwarfAddressSpace: 0)
!357 = !DICompositeType(tag: DW_TAG_structure_type, name: "Argument", scope: !39, file: !2, size: 448, align: 64, elements: !358, templateParams: !23, identifier: "e83c6cea7fcf395a208714db043cdb20")
!358 = !{!359, !360}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "position", scope: !357, file: !2, baseType: !9, size: 64, align: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !357, file: !2, baseType: !361, size: 384, align: 64, offset: 64)
!361 = !DICompositeType(tag: DW_TAG_structure_type, name: "FormatSpec", scope: !39, file: !2, size: 384, align: 64, elements: !362, templateParams: !23, identifier: "6d7725bd26057748b37c23929ea15964")
!362 = !{!363, !364, !365, !366, !382}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !361, file: !2, baseType: !288, size: 32, align: 32, offset: 256)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !361, file: !2, baseType: !38, size: 8, align: 8, offset: 320)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !361, file: !2, baseType: !286, size: 32, align: 32, offset: 288)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !361, file: !2, baseType: !367, size: 128, align: 64)
!367 = !DICompositeType(tag: DW_TAG_structure_type, name: "Count", scope: !39, file: !2, size: 128, align: 64, elements: !368, identifier: "628c649c6bdddc9720d8c1c79e798e33")
!368 = !{!369}
!369 = !DICompositeType(tag: DW_TAG_variant_part, scope: !39, file: !2, size: 128, align: 64, elements: !370, templateParams: !23, identifier: "628c649c6bdddc9720d8c1c79e798e33_variant_part", discriminator: !381)
!370 = !{!371, !375, !379}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "Is", scope: !369, file: !2, baseType: !372, size: 128, align: 64, extraData: i64 0)
!372 = !DICompositeType(tag: DW_TAG_structure_type, name: "Is", scope: !367, file: !2, size: 128, align: 64, elements: !373, templateParams: !23, identifier: "628c649c6bdddc9720d8c1c79e798e33::Is")
!373 = !{!374}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !372, file: !2, baseType: !9, size: 64, align: 64, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "Param", scope: !369, file: !2, baseType: !376, size: 128, align: 64, extraData: i64 1)
!376 = !DICompositeType(tag: DW_TAG_structure_type, name: "Param", scope: !367, file: !2, size: 128, align: 64, elements: !377, templateParams: !23, identifier: "628c649c6bdddc9720d8c1c79e798e33::Param")
!377 = !{!378}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !376, file: !2, baseType: !9, size: 64, align: 64, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "Implied", scope: !369, file: !2, baseType: !380, size: 128, align: 64, extraData: i64 2)
!380 = !DICompositeType(tag: DW_TAG_structure_type, name: "Implied", scope: !367, file: !2, size: 128, align: 64, elements: !23, templateParams: !23, identifier: "628c649c6bdddc9720d8c1c79e798e33::Implied")
!381 = !DIDerivedType(tag: DW_TAG_member, scope: !39, file: !2, baseType: !305, size: 64, align: 64, flags: DIFlagArtificial)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !361, file: !2, baseType: !367, size: 128, align: 64, offset: 128)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !353, file: !2, baseType: !9, size: 64, align: 64, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !347, file: !2, baseType: !385, size: 128, align: 64)
!385 = !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !345, file: !2, size: 128, align: 64, elements: !386, templateParams: !351, identifier: "15c40ae6fa612036aaf0515d0012e61d::Some")
!386 = !{!387}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !385, file: !2, baseType: !353, size: 128, align: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !336, file: !2, baseType: !389, size: 128, align: 64, offset: 256)
!389 = !DICompositeType(tag: DW_TAG_structure_type, name: "&[core::fmt::ArgumentV1]", file: !2, size: 128, align: 64, elements: !390, templateParams: !23, identifier: "dc3b5c7208e9a97c5d32fa7b1e1a979b")
!390 = !{!391, !393}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !389, file: !2, baseType: !392, size: 64, align: 64)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64, align: 64, dwarfAddressSpace: 0)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !389, file: !2, baseType: !9, size: 64, align: 64, offset: 64)
!394 = !DISubroutineType(types: !395)
!395 = !{!336, !339, !389}
!396 = !{!397, !398}
!397 = !DILocalVariable(name: "pieces", arg: 1, scope: !335, file: !272, line: 383, type: !339)
!398 = !DILocalVariable(name: "args", arg: 2, scope: !335, file: !272, line: 383, type: !389)
!399 = !DILocation(line: 383, column: 25, scope: !335)
!400 = !DILocation(line: 383, column: 53, scope: !335)
!401 = !DILocation(line: 384, column: 12, scope: !335)
!402 = !DILocation(line: 384, column: 56, scope: !335)
!403 = !DILocation(line: 384, column: 41, scope: !335)
!404 = !DILocation(line: 387, column: 34, scope: !335)
!405 = !DILocation(line: 387, column: 9, scope: !335)
!406 = !DILocation(line: 388, column: 6, scope: !335)
!407 = !DILocation(line: 385, column: 13, scope: !335)
!408 = distinct !DISubprogram(name: "as_i32", linkageName: "std::sys::unix::process::process_common::ExitCode::as_i32", scope: !191, file: !409, line: 474, type: !410, scopeLine: 474, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !28, templateParams: !23, retainedNodes: !413)
!409 = !DIFile(filename: "/rustc/7737e0b5c4103216d6fd8cf941b7ab9bdbaace7c/library/std/src/sys/unix/process/process_common.rs", directory: "", checksumkind: CSK_MD5, checksum: "5e4688c341384f05a339f0c879a838d3")
!410 = !DISubroutineType(types: !411)
!411 = !{!55, !412}
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&std::sys::unix::process::process_common::ExitCode", baseType: !191, size: 64, align: 64, dwarfAddressSpace: 0)
!413 = !{!414}
!414 = !DILocalVariable(name: "self", arg: 1, scope: !408, file: !409, line: 474, type: !412)
!415 = !DILocation(line: 474, column: 19, scope: !408)
!416 = !DILocation(line: 475, column: 9, scope: !408)
!417 = !DILocation(line: 476, column: 6, scope: !408)
!418 = distinct !DISubprogram(name: "new_display<&str>", linkageName: "core::fmt::ArgumentV1::new_display", scope: !273, file: !272, line: 316, type: !419, scopeLine: 316, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !28, templateParams: !327, retainedNodes: !421)
!419 = !DISubroutineType(types: !420)
!420 = !{!273, !320}
!421 = !{!422}
!422 = !DILocalVariable(name: "x", arg: 1, scope: !418, file: !272, line: 316, type: !320)
!423 = !DILocation(line: 316, column: 30, scope: !418)
!424 = !DILocation(line: 317, column: 13, scope: !418)
!425 = !DILocation(line: 318, column: 10, scope: !418)
!426 = distinct !DISubprogram(name: "fmt<str>", linkageName: "<&T as core::fmt::Display>::fmt", scope: !427, file: !272, line: 2128, type: !322, scopeLine: 2128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !28, templateParams: !431, retainedNodes: !428)
!427 = !DINamespace(name: "{impl#54}", scope: !41)
!428 = !{!429, !430}
!429 = !DILocalVariable(name: "self", arg: 1, scope: !426, file: !272, line: 2128, type: !320)
!430 = !DILocalVariable(name: "f", arg: 2, scope: !426, file: !272, line: 2128, type: !282)
!431 = !{!432}
!432 = !DITemplateTypeParameter(name: "T", type: !34)
!433 = !DILocation(line: 2128, column: 20, scope: !426)
!434 = !DILocation(line: 2128, column: 27, scope: !426)
!435 = !DILocation(line: 2128, column: 71, scope: !426)
!436 = !DILocation(line: 2128, column: 62, scope: !426)
!437 = !DILocation(line: 2128, column: 84, scope: !426)
