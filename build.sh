#!/bin/sh

cargo build --release && \
rustc -O -L./target/release/deps/ \
    -o ./out/out.ll \
    --crate-type=bin \
    --emit=llvm-ir \
    src/main.rs
