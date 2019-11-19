; ModuleID = 'main.7rcbfp3g-cgu.0'
source_filename = "main.7rcbfp3g-cgu.0"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"core::fmt::Formatter" = type { [0 x i64], { i64, i64 }, [0 x i64], { i64, i64 }, [0 x i64], { {}*, [3 x i64]* }, [0 x i64], { i64*, i64* }, [0 x i64], { [0 x { i8*, i8* }]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i8], i8, [7 x i8] }
%"core::fmt::Arguments" = type { [0 x i64], { [0 x { [0 x i8]*, i64 }]*, i64 }, [0 x i64], { i64*, i64 }, [0 x i64], { [0 x { i8*, i8* }]*, i64 }, [0 x i64] }
%"unwind::libunwind::_Unwind_Exception" = type { [0 x i64], i64, [0 x i64], void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [0 x i64], [6 x i64], [0 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

@vtable.0 = private unnamed_addr constant { void (i8**)*, i64, i64, i32 (i8**)*, i32 (i8**)*, i32 (i8**)* } { void (i8**)* @_ZN4core3ptr18real_drop_in_place17h0cc20caec108ff31E, i64 8, i64 8, i32 (i8**)* @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hd1d7965c108d67c1E", i32 (i8**)* @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hd1d7965c108d67c1E", i32 (i8**)* @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h3041ae011648d0feE" }, align 8
@0 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\14" }>, align 1
@1 = private unnamed_addr constant <{ [45 x i8] }> <{ [45 x i8] c"assertion failed: `(left == right)`\0A  left: `" }>, align 1
@2 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"`,\0A right: `" }>, align 1
@3 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"`" }>, align 1
@4 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [45 x i8] }>, <{ [45 x i8] }>* @1, i32 0, i32 0, i32 0), [8 x i8] c"-\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [12 x i8] }>, <{ [12 x i8] }>* @2, i32 0, i32 0, i32 0), [8 x i8] c"\0C\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @3, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@5 = private unnamed_addr constant <{ [11 x i8] }> <{ [11 x i8] c"src/main.rs" }>, align 1
@6 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [11 x i8] }>, <{ [11 x i8] }>* @5, i32 0, i32 0, i32 0), [16 x i8] c"\0B\00\00\00\00\00\00\00\19\00\00\00\05\00\00\00" }>, align 8

; std::rt::lang_start
; Function Attrs: nonlazybind uwtable
define hidden i64 @_ZN3std2rt10lang_start17h835ad5fd3127f0a2E(void ()* nonnull %main, i64 %argc, i8** %argv) unnamed_addr #0 {
start:
  %_7 = alloca i8*, align 8
  %0 = bitcast i8** %_7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0)
  %1 = bitcast i8** %_7 to void ()**
  store void ()* %main, void ()** %1, align 8
  %2 = bitcast i8** %_7 to {}*
; call std::rt::lang_start_internal
  %3 = call i64 @_ZN3std2rt19lang_start_internal17h409d4f2fe51133b0E({}* nonnull align 1 %2, [3 x i64]* noalias readonly align 8 dereferenceable(24) bitcast ({ void (i8**)*, i64, i64, i32 (i8**)*, i32 (i8**)*, i32 (i8**)* }* @vtable.0 to [3 x i64]*), i64 %argc, i8** %argv)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0)
  ret i64 %3
}

; std::rt::lang_start::{{closure}}
; Function Attrs: nonlazybind uwtable
define internal i32 @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hd1d7965c108d67c1E"(i8** noalias nocapture readonly align 8 dereferenceable(8) %_1) unnamed_addr #0 {
start:
  %0 = bitcast i8** %_1 to void ()**
  %1 = load void ()*, void ()** %0, align 8, !nonnull !2
  tail call void %1()
  ret i32 0
}

; <&T as core::fmt::Debug>::fmt
; Function Attrs: nonlazybind uwtable
define internal zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hac8ed9ecc764d981E"(i8** noalias nocapture readonly align 8 dereferenceable(8) %self, %"core::fmt::Formatter"* align 8 dereferenceable(96) %f) unnamed_addr #0 {
start:
  %0 = load i8*, i8** %self, align 8, !nonnull !2
; call core::fmt::Formatter::debug_lower_hex
  %1 = tail call zeroext i1 @_ZN4core3fmt9Formatter15debug_lower_hex17h5325d5e7d51af3abE(%"core::fmt::Formatter"* noalias nonnull readonly align 8 dereferenceable(96) %f), !noalias !3
  br i1 %1, label %bb3.i, label %bb2.i

bb2.i:                                            ; preds = %start
; call core::fmt::Formatter::debug_upper_hex
  %2 = tail call zeroext i1 @_ZN4core3fmt9Formatter15debug_upper_hex17hf12c9375dc1e67a7E(%"core::fmt::Formatter"* noalias nonnull readonly align 8 dereferenceable(96) %f)
  br i1 %2, label %bb7.i, label %bb6.i

bb3.i:                                            ; preds = %start
; call core::fmt::num::<impl core::fmt::LowerHex for u8>::fmt
  %3 = tail call zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u8$GT$3fmt17ha9b0cab85178a169E"(i8* noalias nonnull readonly align 1 dereferenceable(1) %0, %"core::fmt::Formatter"* nonnull align 8 dereferenceable(96) %f)
  br label %"_ZN4core3fmt3num49_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u8$GT$3fmt17ha33ad6765d1dda04E.exit"

bb6.i:                                            ; preds = %bb2.i
; call core::fmt::num::imp::<impl core::fmt::Display for u8>::fmt
  %4 = tail call zeroext i1 @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h925297b085183085E"(i8* noalias nonnull readonly align 1 dereferenceable(1) %0, %"core::fmt::Formatter"* nonnull align 8 dereferenceable(96) %f)
  br label %"_ZN4core3fmt3num49_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u8$GT$3fmt17ha33ad6765d1dda04E.exit"

bb7.i:                                            ; preds = %bb2.i
; call core::fmt::num::<impl core::fmt::UpperHex for u8>::fmt
  %5 = tail call zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u8$GT$3fmt17hb6315762bef52bf3E"(i8* noalias nonnull readonly align 1 dereferenceable(1) %0, %"core::fmt::Formatter"* nonnull align 8 dereferenceable(96) %f)
  br label %"_ZN4core3fmt3num49_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u8$GT$3fmt17ha33ad6765d1dda04E.exit"

"_ZN4core3fmt3num49_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u8$GT$3fmt17ha33ad6765d1dda04E.exit": ; preds = %bb3.i, %bb6.i, %bb7.i
  %_0.0.in.i = phi i1 [ %3, %bb3.i ], [ %5, %bb7.i ], [ %4, %bb6.i ]
  ret i1 %_0.0.in.i
}

; core::ops::function::FnOnce::call_once{{vtable.shim}}
; Function Attrs: nonlazybind uwtable
define internal i32 @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h3041ae011648d0feE"(i8** nocapture readonly %_1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = bitcast i8** %_1 to void ()**
  %1 = load void ()*, void ()** %0, align 8, !nonnull !2
  tail call void %1(), !noalias !6
  ret i32 0
}

; core::ptr::real_drop_in_place
; Function Attrs: norecurse nounwind nonlazybind readnone uwtable
define internal void @_ZN4core3ptr18real_drop_in_place17h0cc20caec108ff31E(i8** nocapture align 8 dereferenceable(8) %_1) unnamed_addr #1 {
start:
  ret void
}

; main::helper
; Function Attrs: noinline nounwind nonlazybind uwtable
define internal fastcc i8 @_ZN4main6helper17hceb6202a66c63cf6E(i8* noalias align 1 dereferenceable(1), i8*) unnamed_addr #2 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
bb8:
  store i8 20, i8* %1, align 1
  tail call void @__rust_dealloc(i8* nonnull %0, i64 1, i64 1) #8
  ret i8 10
}

; main::main
; Function Attrs: nonlazybind uwtable
define internal void @_ZN4main4main17h6b07ac6c6f06cdd6E() unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %_30 = alloca i8*, align 8
  %_28 = alloca i8*, align 8
  %_25 = alloca [2 x { i8*, i8* }], align 8
  %_18 = alloca %"core::fmt::Arguments", align 8
  %res = alloca i8, align 1
  %0 = tail call i8* @__rust_alloc(i64 1, i64 1) #8
  %1 = icmp eq i8* %0, null
  br i1 %1, label %bb6.i.i, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hda8660eed7add3f4E.exit"

bb6.i.i:                                          ; preds = %start
; call alloc::alloc::handle_alloc_error
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h361cf27148797220E(i64 1, i64 1) #8
  unreachable

"_ZN5alloc5boxed12Box$LT$T$GT$3new17hda8660eed7add3f4E.exit": ; preds = %start
  store i8 25, i8* %0, align 1
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %res)
; call main::helper
  %2 = tail call fastcc i8 @_ZN4main6helper17hceb6202a66c63cf6E(i8* noalias nonnull align 1 dereferenceable(1) %0, i8* nonnull %0)
  store i8 %2, i8* %res, align 1
  %3 = icmp eq i8 %2, 20
  br i1 %3, label %bb5, label %bb6

bb5:                                              ; preds = %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hda8660eed7add3f4E.exit"
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %res)
  ret void

bb6:                                              ; preds = %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hda8660eed7add3f4E.exit"
  %4 = bitcast %"core::fmt::Arguments"* %_18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %4)
  %5 = bitcast [2 x { i8*, i8* }]* %_25 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %5)
  %6 = bitcast i8** %_28 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6)
  store i8* %res, i8** %_28, align 8
  %7 = bitcast i8** %_30 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7)
  store i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @0, i64 0, i32 0, i64 0), i8** %_30, align 8
  %8 = bitcast [2 x { i8*, i8* }]* %_25 to i8***
  store i8** %_28, i8*** %8, align 8
  %9 = getelementptr inbounds [2 x { i8*, i8* }], [2 x { i8*, i8* }]* %_25, i64 0, i64 0, i32 1
  store i8* bitcast (i1 (i8**, %"core::fmt::Formatter"*)* @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hac8ed9ecc764d981E" to i8*), i8** %9, align 8
  %10 = getelementptr inbounds [2 x { i8*, i8* }], [2 x { i8*, i8* }]* %_25, i64 0, i64 1, i32 0
  %11 = bitcast i8** %10 to i8***
  store i8** %_30, i8*** %11, align 8
  %12 = getelementptr inbounds [2 x { i8*, i8* }], [2 x { i8*, i8* }]* %_25, i64 0, i64 1, i32 1
  store i8* bitcast (i1 (i8**, %"core::fmt::Formatter"*)* @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hac8ed9ecc764d981E" to i8*), i8** %12, align 8
  %13 = bitcast %"core::fmt::Arguments"* %_18 to [0 x { [0 x i8]*, i64 }]**
  store [0 x { [0 x i8]*, i64 }]* bitcast (<{ i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8] }>* @4 to [0 x { [0 x i8]*, i64 }]*), [0 x { [0 x i8]*, i64 }]** %13, align 8, !alias.scope !9, !noalias !12
  %14 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_18, i64 0, i32 1, i32 1
  store i64 3, i64* %14, align 8, !alias.scope !9, !noalias !12
  %15 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_18, i64 0, i32 3, i32 0
  store i64* null, i64** %15, align 8, !alias.scope !9, !noalias !12
  %16 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_18, i64 0, i32 5, i32 0
  %17 = bitcast [0 x { i8*, i8* }]** %16 to [2 x { i8*, i8* }]**
  store [2 x { i8*, i8* }]* %_25, [2 x { i8*, i8* }]** %17, align 8, !alias.scope !9, !noalias !12
  %18 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_18, i64 0, i32 5, i32 1
  store i64 2, i64* %18, align 8, !alias.scope !9, !noalias !12
; call std::panicking::begin_panic_fmt
  call void @_ZN3std9panicking15begin_panic_fmt17hecb5f06c798651bdE(%"core::fmt::Arguments"* noalias nonnull readonly align 8 dereferenceable(48) %_18, { [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @6 to { [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }*))
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #3

; std::rt::lang_start_internal
; Function Attrs: nonlazybind uwtable
declare i64 @_ZN3std2rt19lang_start_internal17h409d4f2fe51133b0E({}* nonnull align 1, [3 x i64]* noalias readonly align 8 dereferenceable(24), i64, i8**) unnamed_addr #0

; core::fmt::Formatter::debug_lower_hex
; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_ZN4core3fmt9Formatter15debug_lower_hex17h5325d5e7d51af3abE(%"core::fmt::Formatter"* noalias readonly align 8 dereferenceable(96)) unnamed_addr #0

; core::fmt::num::<impl core::fmt::LowerHex for u8>::fmt
; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u8$GT$3fmt17ha9b0cab85178a169E"(i8* noalias readonly align 1 dereferenceable(1), %"core::fmt::Formatter"* align 8 dereferenceable(96)) unnamed_addr #0

; core::fmt::Formatter::debug_upper_hex
; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_ZN4core3fmt9Formatter15debug_upper_hex17hf12c9375dc1e67a7E(%"core::fmt::Formatter"* noalias readonly align 8 dereferenceable(96)) unnamed_addr #0

; core::fmt::num::<impl core::fmt::UpperHex for u8>::fmt
; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u8$GT$3fmt17hb6315762bef52bf3E"(i8* noalias readonly align 1 dereferenceable(1), %"core::fmt::Formatter"* align 8 dereferenceable(96)) unnamed_addr #0

; core::fmt::num::imp::<impl core::fmt::Display for u8>::fmt
; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h925297b085183085E"(i8* noalias readonly align 1 dereferenceable(1), %"core::fmt::Formatter"* align 8 dereferenceable(96)) unnamed_addr #0

; alloc::alloc::handle_alloc_error
; Function Attrs: noreturn nounwind nonlazybind uwtable
declare void @_ZN5alloc5alloc18handle_alloc_error17h361cf27148797220E(i64, i64) unnamed_addr #4

; Function Attrs: nounwind nonlazybind uwtable
declare noalias i8* @__rust_alloc(i64, i64) unnamed_addr #3

; Function Attrs: nounwind nonlazybind uwtable
declare void @__rust_dealloc(i8*, i64, i64) unnamed_addr #3

; std::panicking::begin_panic_fmt
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN3std9panicking15begin_panic_fmt17hecb5f06c798651bdE(%"core::fmt::Arguments"* noalias readonly align 8 dereferenceable(48), { [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly align 8 dereferenceable(24)) unnamed_addr #5

; Function Attrs: nonlazybind
define i32 @main(i32, i8**) unnamed_addr #6 {
top:
  %_7.i = alloca i8*, align 8
  %2 = sext i32 %0 to i64
  %3 = bitcast i8** %_7.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3)
  %4 = bitcast i8** %_7.i to void ()**
  store void ()* @_ZN4main4main17h6b07ac6c6f06cdd6E, void ()** %4, align 8
  %5 = bitcast i8** %_7.i to {}*
; call std::rt::lang_start_internal
  %6 = call i64 @_ZN3std2rt19lang_start_internal17h409d4f2fe51133b0E({}* nonnull align 1 %5, [3 x i64]* noalias readonly align 8 dereferenceable(24) bitcast ({ void (i8**)*, i64, i64, i32 (i8**)*, i32 (i8**)*, i32 (i8**)* }* @vtable.0 to [3 x i64]*), i64 %2, i8** %1)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3)
  %7 = trunc i64 %6 to i32
  ret i32 %7
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #7

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #7

attributes #0 = { nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #1 = { norecurse nounwind nonlazybind readnone uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #2 = { noinline nounwind nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #3 = { nounwind nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #4 = { noreturn nounwind nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #5 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #6 = { nonlazybind "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #7 = { argmemonly nounwind }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 7, !"PIE Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{}
!3 = !{!4}
!4 = distinct !{!4, !5, !"_ZN4core3fmt3num49_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u8$GT$3fmt17ha33ad6765d1dda04E: %self"}
!5 = distinct !{!5, !"_ZN4core3fmt3num49_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u8$GT$3fmt17ha33ad6765d1dda04E"}
!6 = !{!7}
!7 = distinct !{!7, !8, !"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hd1d7965c108d67c1E: %_1"}
!8 = distinct !{!8, !"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hd1d7965c108d67c1E"}
!9 = !{!10}
!10 = distinct !{!10, !11, !"_ZN4core3fmt9Arguments6new_v117he10104bc442ecc5fE: argument 0"}
!11 = distinct !{!11, !"_ZN4core3fmt9Arguments6new_v117he10104bc442ecc5fE"}
!12 = !{!13}
!13 = distinct !{!13, !11, !"_ZN4core3fmt9Arguments6new_v117he10104bc442ecc5fE: %args.0"}
