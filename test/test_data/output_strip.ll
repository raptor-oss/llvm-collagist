; ModuleID = 'output.ll'
source_filename = "test_rust.3b402897-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%Sheep = type { { ptr, i64 }, i8, [7 x i8] }
%"core::fmt::Arguments" = type { { ptr, i64 }, { ptr, i64 }, { ptr, i64 } }

@alloc19 = private unnamed_addr constant <{ [0 x i8] }> zeroinitializer, align 8
@alloc23 = private unnamed_addr constant <{ [21 x i8] }> <{ [21 x i8] c" is already naked...\0A" }>, align 1
@alloc22 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc19, [8 x i8] zeroinitializer, ptr @alloc23, [8 x i8] c"\15\00\00\00\00\00\00\00" }>, align 8
@alloc27 = private unnamed_addr constant <{ [17 x i8] }> <{ [17 x i8] c" gets a haircut!\0A" }>, align 1
@alloc26 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc19, [8 x i8] zeroinitializer, ptr @alloc27, [8 x i8] c"\11\00\00\00\00\00\00\00" }>, align 8
@alloc51 = private unnamed_addr constant <{ [8 x i8] }> <{ [8 x i8] c"baaaaah?" }>, align 1
@alloc52 = private unnamed_addr constant <{ [8 x i8] }> <{ [8 x i8] c"baaaaah!" }>, align 1
@alloc7 = private unnamed_addr constant <{ [19 x i8] }> <{ [19 x i8] c" pauses briefly... " }>, align 1
@alloc8 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc6 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc19, [8 x i8] zeroinitializer, ptr @alloc7, [8 x i8] c"\13\00\00\00\00\00\00\00", ptr @alloc8, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc53 = private unnamed_addr constant <{ [5 x i8] }> <{ [5 x i8] c"Dolly" }>, align 1
@vtable.0 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, [0 x i8] }> <{ ptr @"_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h43d1629154544544E", [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hf6c799f2ba60b89aE", ptr @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hf81abbd01843cabcE", ptr @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hf81abbd01843cabcE", [0 x i8] zeroinitializer }>, align 8
@alloc16 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"invalid args" }>, align 1
@alloc17 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @alloc16, [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@alloc59 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/7737e0b5c4103216d6fd8cf941b7ab9bdbaace7c/library/core/src/fmt/mod.rs" }>, align 1
@alloc60 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc59, [16 x i8] c"K\00\00\00\00\00\00\00\81\01\00\00\0D\00\00\00" }>, align 8

; Function Attrs: inlinehint uwtable
define internal i32 @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hf6c799f2ba60b89aE"(ptr %_1) unnamed_addr #0 {
start:
  %_1.dbg.spill = alloca ptr, align 8
  %_2 = alloca {}, align 1
  store ptr %_1, ptr %_1.dbg.spill, align 8
  %0 = load ptr, ptr %_1, align 8, !nonnull !4
  %1 = call i32 @_ZN4core3ops8function6FnOnce9call_once17h9a394708ed00f19bE(ptr nonnull %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %1
}

; Function Attrs: inlinehint uwtable
define internal i32 @_ZN4core3ops8function6FnOnce9call_once17h9a394708ed00f19bE(ptr nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %1 = alloca { ptr, i32 }, align 8
  %_2 = alloca {}, align 1
  %_1 = alloca ptr, align 8
  store ptr %0, ptr %_1, align 8
  %2 = invoke i32 @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hf81abbd01843cabcE"(ptr noundef align 8 dereferenceable(8) %_1)
          to label %bb1 unwind label %cleanup

bb1:                                              ; preds = %start
  br label %bb2

bb3:                                              ; preds = %cleanup
  br label %bb4

cleanup:                                          ; preds = %start
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  %5 = extractvalue { ptr, i32 } %3, 1
  %6 = getelementptr inbounds { ptr, i32 }, ptr %1, i32 0, i32 0
  store ptr %4, ptr %6, align 8
  %7 = getelementptr inbounds { ptr, i32 }, ptr %1, i32 0, i32 1
  store i32 %5, ptr %7, align 8
  br label %bb3

bb4:                                              ; preds = %bb3
  %8 = bitcast ptr %1 to ptr
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds { ptr, i32 }, ptr %1, i32 0, i32 1
  %11 = load i32, ptr %10, align 8
  %12 = insertvalue { ptr, i32 } undef, ptr %9, 0
  %13 = insertvalue { ptr, i32 } %12, i32 %11, 1
  resume { ptr, i32 } %13

bb2:                                              ; preds = %bb1
  ret i32 %2
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN4core3ops8function6FnOnce9call_once17he0a8fee5e9bc4b34E(ptr nonnull %_1) unnamed_addr #0 {
start:
  %_1.dbg.spill = alloca ptr, align 8
  %_2 = alloca {}, align 1
  store ptr %_1, ptr %_1.dbg.spill, align 8
  call void %_1()
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h43d1629154544544E"(ptr %_1) unnamed_addr #0 {
start:
  %_1.dbg.spill = alloca ptr, align 8
  store ptr %_1, ptr %_1.dbg.spill, align 8
  ret void
}

; Function Attrs: uwtable
define internal noundef zeroext i1 @_ZN9test_rust5Sheep8is_naked17h1b956e419463df68E(ptr noundef align 8 dereferenceable(24) %self) unnamed_addr #1 {
start:
  %self.dbg.spill = alloca ptr, align 8
  store ptr %self, ptr %self.dbg.spill, align 8
  %0 = getelementptr inbounds %Sheep, ptr %self, i32 0, i32 1
  %1 = load i8, ptr %0, align 8, !range !5
  %2 = trunc i8 %1 to i1
  ret i1 %2
}

; Function Attrs: uwtable
define internal void @_ZN9test_rust5Sheep5shear17h17964a275c4cbb8aE(ptr noundef align 8 dereferenceable(24) %self) unnamed_addr #1 {
start:
  %self.dbg.spill = alloca ptr, align 8
  %_26 = alloca [1 x { ptr, ptr }], align 8
  %_19 = alloca %"core::fmt::Arguments", align 8
  %_16 = alloca { ptr, i64 }, align 8
  %_12 = alloca [1 x { ptr, ptr }], align 8
  %_5 = alloca %"core::fmt::Arguments", align 8
  store ptr %self, ptr %self.dbg.spill, align 8
  %_2 = call noundef zeroext i1 @_ZN9test_rust5Sheep8is_naked17h1b956e419463df68E(ptr noundef align 8 dereferenceable(24) %self)
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %_2, label %bb2, label %bb6

bb6:                                              ; preds = %bb1
  %_29 = bitcast ptr %self to ptr
  %0 = call { ptr, ptr } @_ZN4core3fmt10ArgumentV111new_display17h58945fcb9e7a94b7E(ptr noundef align 8 dereferenceable(16) %_29)
  %_27.0 = extractvalue { ptr, ptr } %0, 0
  %_27.1 = extractvalue { ptr, ptr } %0, 1
  br label %bb7

bb2:                                              ; preds = %bb1
  %1 = call { ptr, i64 } @"_ZN54_$LT$test_rust..Sheep$u20$as$u20$test_rust..Animal$GT$4name17h38fd05a32733abdeE"(ptr noundef align 8 dereferenceable(24) %self)
  store { ptr, i64 } %1, ptr %_16, align 8
  br label %bb3

bb3:                                              ; preds = %bb2
  %2 = call { ptr, ptr } @_ZN4core3fmt10ArgumentV111new_display17h58945fcb9e7a94b7E(ptr noundef align 8 dereferenceable(16) %_16)
  %_13.0 = extractvalue { ptr, ptr } %2, 0
  %_13.1 = extractvalue { ptr, ptr } %2, 1
  br label %bb4

bb4:                                              ; preds = %bb3
  %3 = bitcast ptr %_12 to ptr
  %4 = getelementptr inbounds { ptr, ptr }, ptr %3, i32 0, i32 0
  store ptr %_13.0, ptr %4, align 8
  %5 = getelementptr inbounds { ptr, ptr }, ptr %3, i32 0, i32 1
  store ptr %_13.1, ptr %5, align 8
  %_9.0 = bitcast ptr %_12 to ptr
  call void @_ZN4core3fmt9Arguments6new_v117h574d9346f559fef9E(ptr noalias nocapture noundef sret(%"core::fmt::Arguments") dereferenceable(48) %_5, ptr noundef nonnull align 8 @alloc22, i64 2, ptr noundef nonnull align 8 %_9.0, i64 1)
  br label %bb5

bb5:                                              ; preds = %bb4
  call void @_ZN3std2io5stdio6_print17h56750a7b9b0c9427E(ptr noalias nocapture noundef dereferenceable(48) %_5)
  br label %bb10

bb10:                                             ; preds = %bb9, %bb5
  ret void

bb7:                                              ; preds = %bb6
  %6 = bitcast ptr %_26 to ptr
  %7 = getelementptr inbounds { ptr, ptr }, ptr %6, i32 0, i32 0
  store ptr %_27.0, ptr %7, align 8
  %8 = getelementptr inbounds { ptr, ptr }, ptr %6, i32 0, i32 1
  store ptr %_27.1, ptr %8, align 8
  %_23.0 = bitcast ptr %_26 to ptr
  call void @_ZN4core3fmt9Arguments6new_v117h574d9346f559fef9E(ptr noalias nocapture noundef sret(%"core::fmt::Arguments") dereferenceable(48) %_19, ptr noundef nonnull align 8 @alloc26, i64 2, ptr noundef nonnull align 8 %_23.0, i64 1)
  br label %bb8

bb8:                                              ; preds = %bb7
  call void @_ZN3std2io5stdio6_print17h56750a7b9b0c9427E(ptr noalias nocapture noundef dereferenceable(48) %_19)
  br label %bb9

bb9:                                              ; preds = %bb8
  %9 = getelementptr inbounds %Sheep, ptr %self, i32 0, i32 1
  store i8 1, ptr %9, align 8
  br label %bb10
}

; Function Attrs: uwtable
define internal void @"_ZN54_$LT$test_rust..Sheep$u20$as$u20$test_rust..Animal$GT$3new17hb13cfef5428c1bdaE"(ptr noalias nocapture noundef sret(%Sheep) dereferenceable(24) %0, ptr noundef nonnull align 1 %name.0, i64 %name.1) unnamed_addr #1 {
start:
  %name.dbg.spill = alloca { ptr, i64 }, align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %name.dbg.spill, i32 0, i32 0
  store ptr %name.0, ptr %1, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %name.dbg.spill, i32 0, i32 1
  store i64 %name.1, ptr %2, align 8
  %3 = getelementptr inbounds %Sheep, ptr %0, i32 0, i32 1
  store i8 0, ptr %3, align 8
  %4 = bitcast ptr %0 to ptr
  %5 = getelementptr inbounds { ptr, i64 }, ptr %4, i32 0, i32 0
  store ptr %name.0, ptr %5, align 8
  %6 = getelementptr inbounds { ptr, i64 }, ptr %4, i32 0, i32 1
  store i64 %name.1, ptr %6, align 8
  ret void
}

; Function Attrs: uwtable
define internal { ptr, i64 } @"_ZN54_$LT$test_rust..Sheep$u20$as$u20$test_rust..Animal$GT$4name17h38fd05a32733abdeE"(ptr noundef align 8 dereferenceable(24) %self) unnamed_addr #1 {
start:
  %self.dbg.spill = alloca ptr, align 8
  store ptr %self, ptr %self.dbg.spill, align 8
  %0 = bitcast ptr %self to ptr
  %1 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 0
  %2 = load ptr, ptr %1, align 8, !nonnull !4
  %3 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 1
  %4 = load i64, ptr %3, align 8
  %5 = insertvalue { ptr, i64 } undef, ptr %2, 0
  %6 = insertvalue { ptr, i64 } %5, i64 %4, 1
  ret { ptr, i64 } %6
}

; Function Attrs: uwtable
define internal { ptr, i64 } @"_ZN54_$LT$test_rust..Sheep$u20$as$u20$test_rust..Animal$GT$5noise17hdd03463da2673b73E"(ptr noundef align 8 dereferenceable(24) %self) unnamed_addr #1 {
start:
  %self.dbg.spill = alloca ptr, align 8
  %0 = alloca { ptr, i64 }, align 8
  store ptr %self, ptr %self.dbg.spill, align 8
  %_2 = call noundef zeroext i1 @_ZN9test_rust5Sheep8is_naked17h1b956e419463df68E(ptr noundef align 8 dereferenceable(24) %self)
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %_2, label %bb2, label %bb3

bb3:                                              ; preds = %bb1
  %1 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 0
  store ptr @alloc52, ptr %1, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 1
  store i64 8, ptr %2, align 8
  br label %bb4

bb2:                                              ; preds = %bb1
  %3 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 0
  store ptr @alloc51, ptr %3, align 8
  %4 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 1
  store i64 8, ptr %4, align 8
  br label %bb4

bb4:                                              ; preds = %bb2, %bb3
  %5 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 0
  %6 = load ptr, ptr %5, align 8, !nonnull !4
  %7 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 1
  %8 = load i64, ptr %7, align 8
  %9 = insertvalue { ptr, i64 } undef, ptr %6, 0
  %10 = insertvalue { ptr, i64 } %9, i64 %8, 1
  ret { ptr, i64 } %10
}

; Function Attrs: uwtable
define internal void @"_ZN54_$LT$test_rust..Sheep$u20$as$u20$test_rust..Animal$GT$4talk17h1616a02941476084E"(ptr noundef align 8 dereferenceable(24) %self) unnamed_addr #1 {
start:
  %self.dbg.spill = alloca ptr, align 8
  %_17 = alloca { ptr, i64 }, align 8
  %_10 = alloca [2 x { ptr, ptr }], align 8
  %_3 = alloca %"core::fmt::Arguments", align 8
  store ptr %self, ptr %self.dbg.spill, align 8
  %_13 = bitcast ptr %self to ptr
  %0 = call { ptr, ptr } @_ZN4core3fmt10ArgumentV111new_display17h58945fcb9e7a94b7E(ptr noundef align 8 dereferenceable(16) %_13)
  %_11.0 = extractvalue { ptr, ptr } %0, 0
  %_11.1 = extractvalue { ptr, ptr } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { ptr, i64 } @"_ZN54_$LT$test_rust..Sheep$u20$as$u20$test_rust..Animal$GT$5noise17hdd03463da2673b73E"(ptr noundef align 8 dereferenceable(24) %self)
  store { ptr, i64 } %1, ptr %_17, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = call { ptr, ptr } @_ZN4core3fmt10ArgumentV111new_display17h58945fcb9e7a94b7E(ptr noundef align 8 dereferenceable(16) %_17)
  %_14.0 = extractvalue { ptr, ptr } %2, 0
  %_14.1 = extractvalue { ptr, ptr } %2, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %3 = bitcast ptr %_10 to ptr
  %4 = getelementptr inbounds { ptr, ptr }, ptr %3, i32 0, i32 0
  store ptr %_11.0, ptr %4, align 8
  %5 = getelementptr inbounds { ptr, ptr }, ptr %3, i32 0, i32 1
  store ptr %_11.1, ptr %5, align 8
  %6 = getelementptr inbounds [2 x { ptr, ptr }], ptr %_10, i32 0, i32 1
  %7 = getelementptr inbounds { ptr, ptr }, ptr %6, i32 0, i32 0
  store ptr %_14.0, ptr %7, align 8
  %8 = getelementptr inbounds { ptr, ptr }, ptr %6, i32 0, i32 1
  store ptr %_14.1, ptr %8, align 8
  %_7.0 = bitcast ptr %_10 to ptr
  call void @_ZN4core3fmt9Arguments6new_v117h574d9346f559fef9E(ptr noalias nocapture noundef sret(%"core::fmt::Arguments") dereferenceable(48) %_3, ptr noundef nonnull align 8 @alloc6, i64 3, ptr noundef nonnull align 8 %_7.0, i64 2)
  br label %bb4

bb4:                                              ; preds = %bb3
  call void @_ZN3std2io5stdio6_print17h56750a7b9b0c9427E(ptr noalias nocapture noundef dereferenceable(48) %_3)
  br label %bb5

bb5:                                              ; preds = %bb4
  ret void
}

; Function Attrs: uwtable
define internal void @_ZN9test_rust4main17hd041255a46cdba80E() unnamed_addr #1 {
start:
  %dolly = alloca %Sheep, align 8
  call void @"_ZN54_$LT$test_rust..Sheep$u20$as$u20$test_rust..Animal$GT$3new17hb13cfef5428c1bdaE"(ptr noalias nocapture noundef sret(%Sheep) dereferenceable(24) %dolly, ptr noundef nonnull align 1 @alloc53, i64 5)
  br label %bb1

bb1:                                              ; preds = %start
  call void @"_ZN54_$LT$test_rust..Sheep$u20$as$u20$test_rust..Animal$GT$4talk17h1616a02941476084E"(ptr noundef align 8 dereferenceable(24) %dolly)
  br label %bb2

bb2:                                              ; preds = %bb1
  call void @_ZN9test_rust5Sheep5shear17h17964a275c4cbb8aE(ptr noundef align 8 dereferenceable(24) %dolly)
  br label %bb3

bb3:                                              ; preds = %bb2
  call void @"_ZN54_$LT$test_rust..Sheep$u20$as$u20$test_rust..Animal$GT$4talk17h1616a02941476084E"(ptr noundef align 8 dereferenceable(24) %dolly)
  br label %bb4

bb4:                                              ; preds = %bb3
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN4core4hint9black_box17h95ff76910fa03c36E() unnamed_addr #0 {
start:
  %dummy.dbg.spill = alloca {}, align 1
  call void asm sideeffect "", "r,~{memory}"(ptr undef), !srcloc !6
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i32 @_ZN3std7process8ExitCode6to_i3217h1ffd091b34e7c8deE(i8 %0) unnamed_addr #0 {
start:
  %self = alloca i8, align 1
  store i8 %0, ptr %self, align 1
  %1 = call i32 @_ZN3std3sys4unix7process14process_common8ExitCode6as_i3217hce99c6cbfd6d1a5eE(ptr noundef align 1 dereferenceable(1) %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %1
}

; Function Attrs: inlinehint uwtable
define internal i8 @"_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hcba6955caa8405d5E"() unnamed_addr #0 {
start:
  %self.dbg.spill = alloca {}, align 1
  %0 = call i8 @"_ZN68_$LT$std..process..ExitCode$u20$as$u20$std..process..Termination$GT$6report17h4a5b522a2bd5aeaaE"(i8 0)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8 %0
}

; Function Attrs: inlinehint uwtable
define internal i8 @"_ZN68_$LT$std..process..ExitCode$u20$as$u20$std..process..Termination$GT$6report17h4a5b522a2bd5aeaaE"(i8 %self) unnamed_addr #0 {
start:
  %self.dbg.spill = alloca i8, align 1
  store i8 %self, ptr %self.dbg.spill, align 1
  ret i8 %self
}

; Function Attrs: uwtable
define hidden i64 @_ZN3std2rt10lang_start17h243bee2d0c256238E(ptr nonnull %main, i64 %argc, ptr %argv) unnamed_addr #1 {
start:
  %v.dbg.spill = alloca i64, align 8
  %argv.dbg.spill = alloca ptr, align 8
  %argc.dbg.spill = alloca i64, align 8
  %main.dbg.spill = alloca ptr, align 8
  %_8 = alloca ptr, align 8
  %_4 = alloca i64, align 8
  store ptr %main, ptr %main.dbg.spill, align 8
  store i64 %argc, ptr %argc.dbg.spill, align 8
  store ptr %argv, ptr %argv.dbg.spill, align 8
  %0 = bitcast ptr %_8 to ptr
  store ptr %main, ptr %0, align 8
  %_5.0 = bitcast ptr %_8 to ptr
  %1 = call i64 @_ZN3std2rt19lang_start_internal17h358b6d58e23c88c7E(ptr noundef nonnull align 1 %_5.0, ptr noundef align 8 dereferenceable(24) @vtable.0, i64 %argc, ptr %argv)
  store i64 %1, ptr %_4, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %v = load i64, ptr %_4, align 8
  store i64 %v, ptr %v.dbg.spill, align 8
  ret i64 %v
}

; Function Attrs: inlinehint uwtable
define internal i32 @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hf81abbd01843cabcE"(ptr noundef align 8 dereferenceable(8) %_1) unnamed_addr #0 {
start:
  %_1.dbg.spill = alloca ptr, align 8
  store ptr %_1, ptr %_1.dbg.spill, align 8
  %0 = load ptr, ptr %_1.dbg.spill, align 8, !nonnull !4
  %1 = bitcast ptr %0 to ptr
  %2 = bitcast ptr %_1 to ptr
  %_4 = load ptr, ptr %2, align 8, !nonnull !4
  call void @_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h96dd6635f2fbfd60E(ptr nonnull %_4)
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = call i8 @"_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hcba6955caa8405d5E"()
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = call i32 @_ZN3std7process8ExitCode6to_i3217h1ffd091b34e7c8deE(i8 %_2)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i32 %3
}

; Function Attrs: noinline uwtable
define internal void @_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h96dd6635f2fbfd60E(ptr nonnull %f) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %0 = alloca { ptr, i32 }, align 8
  %f.dbg.spill = alloca ptr, align 8
  %result.dbg.spill = alloca {}, align 1
  store ptr %f, ptr %f.dbg.spill, align 8
  call void @_ZN4core3ops8function6FnOnce9call_once17he0a8fee5e9bc4b34E(ptr nonnull %f)
  br label %bb1

bb1:                                              ; preds = %start
  invoke void @_ZN4core4hint9black_box17h95ff76910fa03c36E()
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  ret void

bb3:                                              ; preds = %cleanup
  br label %bb4

cleanup:                                          ; preds = %bb1
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  %4 = getelementptr inbounds { ptr, i32 }, ptr %0, i32 0, i32 0
  store ptr %2, ptr %4, align 8
  %5 = getelementptr inbounds { ptr, i32 }, ptr %0, i32 0, i32 1
  store i32 %3, ptr %5, align 8
  br label %bb3

bb4:                                              ; preds = %bb3
  %6 = bitcast ptr %0 to ptr
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds { ptr, i32 }, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 8
  %10 = insertvalue { ptr, i32 } undef, ptr %7, 0
  %11 = insertvalue { ptr, i32 } %10, i32 %9, 1
  resume { ptr, i32 } %11
}

; Function Attrs: inlinehint uwtable
define internal { ptr, ptr } @_ZN4core3fmt10ArgumentV13new17h5afc55ecc8f3cf85E(ptr noundef align 8 dereferenceable(16) %x, ptr nonnull %f) unnamed_addr #0 {
start:
  %0 = alloca ptr, align 8
  %1 = alloca ptr, align 8
  %f.dbg.spill = alloca ptr, align 8
  %x.dbg.spill = alloca ptr, align 8
  %2 = alloca { ptr, ptr }, align 8
  store ptr %x, ptr %x.dbg.spill, align 8
  store ptr %f, ptr %f.dbg.spill, align 8
  %3 = bitcast ptr %f to ptr
  store ptr %3, ptr %1, align 8
  %_3 = load ptr, ptr %1, align 8, !nonnull !4
  br label %bb1

bb1:                                              ; preds = %start
  %4 = bitcast ptr %x to ptr
  store ptr %4, ptr %0, align 8
  %_5 = load ptr, ptr %0, align 8, !nonnull !4
  br label %bb2

bb2:                                              ; preds = %bb1
  %5 = bitcast ptr %2 to ptr
  store ptr %_5, ptr %5, align 8
  %6 = getelementptr inbounds { ptr, ptr }, ptr %2, i32 0, i32 1
  %7 = bitcast ptr %6 to ptr
  store ptr %_3, ptr %7, align 8
  %8 = getelementptr inbounds { ptr, ptr }, ptr %2, i32 0, i32 0
  %9 = load ptr, ptr %8, align 8, !nonnull !4
  %10 = getelementptr inbounds { ptr, ptr }, ptr %2, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8, !nonnull !4
  %12 = insertvalue { ptr, ptr } undef, ptr %9, 0
  %13 = insertvalue { ptr, ptr } %12, ptr %11, 1
  ret { ptr, ptr } %13
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN4core3fmt9Arguments6new_v117h574d9346f559fef9E(ptr noalias nocapture noundef sret(%"core::fmt::Arguments") dereferenceable(48) %0, ptr noundef nonnull align 8 %pieces.0, i64 %pieces.1, ptr noundef nonnull align 8 %args.0, i64 %args.1) unnamed_addr #0 {
start:
  %args.dbg.spill = alloca { ptr, i64 }, align 8
  %pieces.dbg.spill = alloca { ptr, i64 }, align 8
  %_23 = alloca { ptr, i64 }, align 8
  %_15 = alloca %"core::fmt::Arguments", align 8
  %_3 = alloca i8, align 1
  %1 = getelementptr inbounds { ptr, i64 }, ptr %pieces.dbg.spill, i32 0, i32 0
  store ptr %pieces.0, ptr %1, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %pieces.dbg.spill, i32 0, i32 1
  store i64 %pieces.1, ptr %2, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %args.dbg.spill, i32 0, i32 0
  store ptr %args.0, ptr %3, align 8
  %4 = getelementptr inbounds { ptr, i64 }, ptr %args.dbg.spill, i32 0, i32 1
  store i64 %args.1, ptr %4, align 8
  %_4 = icmp ult i64 %pieces.1, %args.1
  br i1 %_4, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_12 = add i64 %args.1, 1
  %_9 = icmp ugt i64 %pieces.1, %_12
  %5 = zext i1 %_9 to i8
  store i8 %5, ptr %_3, align 1
  br label %bb3

bb1:                                              ; preds = %start
  store i8 1, ptr %_3, align 1
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  %6 = load i8, ptr %_3, align 1, !range !5
  %7 = trunc i8 %6 to i1
  br i1 %7, label %bb4, label %bb6

bb6:                                              ; preds = %bb3
  %8 = bitcast ptr %_23 to ptr
  call void @llvm.memset.p0.i64(ptr align 8 %8, i8 0, i64 16, i1 false)
  %9 = bitcast ptr %_23 to ptr
  store ptr null, ptr %9, align 8
  %10 = bitcast ptr %0 to ptr
  %11 = getelementptr inbounds { ptr, i64 }, ptr %10, i32 0, i32 0
  store ptr %pieces.0, ptr %11, align 8
  %12 = getelementptr inbounds { ptr, i64 }, ptr %10, i32 0, i32 1
  store i64 %pieces.1, ptr %12, align 8
  %13 = getelementptr inbounds %"core::fmt::Arguments", ptr %0, i32 0, i32 1
  %14 = getelementptr inbounds { ptr, i64 }, ptr %_23, i32 0, i32 0
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds { ptr, i64 }, ptr %_23, i32 0, i32 1
  %17 = load i64, ptr %16, align 8
  %18 = getelementptr inbounds { ptr, i64 }, ptr %13, i32 0, i32 0
  store ptr %15, ptr %18, align 8
  %19 = getelementptr inbounds { ptr, i64 }, ptr %13, i32 0, i32 1
  store i64 %17, ptr %19, align 8
  %20 = getelementptr inbounds %"core::fmt::Arguments", ptr %0, i32 0, i32 2
  %21 = getelementptr inbounds { ptr, i64 }, ptr %20, i32 0, i32 0
  store ptr %args.0, ptr %21, align 8
  %22 = getelementptr inbounds { ptr, i64 }, ptr %20, i32 0, i32 1
  store i64 %args.1, ptr %22, align 8
  ret void

bb4:                                              ; preds = %bb3
  call void @_ZN4core3fmt9Arguments6new_v117h574d9346f559fef9E(ptr noalias nocapture noundef sret(%"core::fmt::Arguments") dereferenceable(48) %_15, ptr noundef nonnull align 8 @alloc17, i64 1, ptr noundef nonnull align 8 @alloc19, i64 0)
  br label %bb5

bb5:                                              ; preds = %bb4
  call void @_ZN4core9panicking9panic_fmt17h4fe1013b011ef602E(ptr noalias nocapture noundef dereferenceable(48) %_15, ptr noundef align 8 dereferenceable(24) @alloc60) #7
  unreachable
}

; Function Attrs: inlinehint uwtable
define internal i32 @_ZN3std3sys4unix7process14process_common8ExitCode6as_i3217hce99c6cbfd6d1a5eE(ptr noundef align 1 dereferenceable(1) %self) unnamed_addr #0 {
start:
  %self.dbg.spill = alloca ptr, align 8
  store ptr %self, ptr %self.dbg.spill, align 8
  %_2 = load i8, ptr %self, align 1
  %0 = zext i8 %_2 to i32
  ret i32 %0
}

; Function Attrs: inlinehint uwtable
define internal { ptr, ptr } @_ZN4core3fmt10ArgumentV111new_display17h58945fcb9e7a94b7E(ptr noundef align 8 dereferenceable(16) %x) unnamed_addr #0 {
start:
  %x.dbg.spill = alloca ptr, align 8
  store ptr %x, ptr %x.dbg.spill, align 8
  %0 = call { ptr, ptr } @_ZN4core3fmt10ArgumentV13new17h5afc55ecc8f3cf85E(ptr noundef align 8 dereferenceable(16) %x, ptr nonnull @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17he99fb45e94e8a11cE")
  %1 = extractvalue { ptr, ptr } %0, 0
  %2 = extractvalue { ptr, ptr } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { ptr, ptr } undef, ptr %1, 0
  %4 = insertvalue { ptr, ptr } %3, ptr %2, 1
  ret { ptr, ptr } %4
}

; Function Attrs: uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17he99fb45e94e8a11cE"(ptr noundef align 8 dereferenceable(16) %self, ptr noundef align 8 dereferenceable(64) %f) unnamed_addr #1 {
start:
  %f.dbg.spill = alloca ptr, align 8
  %self.dbg.spill = alloca ptr, align 8
  store ptr %self, ptr %self.dbg.spill, align 8
  store ptr %f, ptr %f.dbg.spill, align 8
  %0 = getelementptr inbounds { ptr, i64 }, ptr %self, i32 0, i32 0
  %_4.0 = load ptr, ptr %0, align 8, !nonnull !4
  %1 = getelementptr inbounds { ptr, i64 }, ptr %self, i32 0, i32 1
  %_4.1 = load i64, ptr %1, align 8
  %2 = call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hb9a135be47760956E"(ptr noundef nonnull align 1 %_4.0, i64 %_4.1, ptr noundef align 8 dereferenceable(64) %f)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %2
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #1

; Function Attrs: uwtable
declare void @_ZN3std2io5stdio6_print17h56750a7b9b0c9427E(ptr noalias nocapture noundef dereferenceable(48)) unnamed_addr #1

; Function Attrs: uwtable
declare i64 @_ZN3std2rt19lang_start_internal17h358b6d58e23c88c7E(ptr noundef nonnull align 1, ptr noundef align 8 dereferenceable(24), i64, ptr) unnamed_addr #1

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking9panic_fmt17h4fe1013b011ef602E(ptr noalias nocapture noundef dereferenceable(48), ptr noundef align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: uwtable
declare noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hb9a135be47760956E"(ptr noundef nonnull align 1, i64, ptr noundef align 8 dereferenceable(64)) unnamed_addr #1

define i32 @main(i32 %0, ptr %1) unnamed_addr #5 {
top:
  %2 = sext i32 %0 to i64
  %3 = call i64 @_ZN3std2rt10lang_start17h243bee2d0c256238E(ptr @_ZN9test_rust4main17hd041255a46cdba80E, i64 %2, ptr %1)
  %4 = trunc i64 %3 to i32
  ret i32 %4
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { noinline uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #5 = { "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 2, !"Dwarf Version", i32 2}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{}
!5 = !{i8 0, i8 2}
!6 = !{i32 3186872}
