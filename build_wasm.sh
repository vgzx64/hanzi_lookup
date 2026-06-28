#!/bin/bash
cargo build -p hanzi_lookup --target wasm32-unknown-unknown --release
wasm-bindgen target/wasm32-unknown-unknown/release/hanzi_lookup.wasm --out-dir dist --target no-modules
cp dist/*.* web_demo/
rm -rf dist
