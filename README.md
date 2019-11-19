# owning-ref - noalias conflict

This repo is a minimal repoduction of the UB when compiling owning_ref `v0.4.0`.

## Failing behaviour

### Source (extracted from [src/main.rs](./src/main.rs))

```rust
fn helper(owning_ref: OwningRef<Box<Cell<u8>>, Cell<u8>>) -> u8 {
    owning_ref.as_owner().set(10);
    owning_ref.set(20);
    owning_ref.as_owner().get() // note this should return the value 20
}
```

### LLVM IR (extracted from [out/ub.ll](./out/ub.ll))

```llvm
; main::helper
; Function Attrs: noinline nounwind nonlazybind uwtable
define internal fastcc i8 @_ZN4main6helper17hceb6202a66c63cf6E(i8* noalias align 1 dereferenceable(1), i8*) unnamed_addr #2 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
bb8:
  store i8 20, i8* %1, align 1
  tail call void @__rust_dealloc(i8* nonnull %0, i64 1, i64 1) #8
  ret i8 10 ; note the compiler is returning the value 10, not 20
}
```
