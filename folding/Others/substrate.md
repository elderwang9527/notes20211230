## 最新版rust需要做如下处理才能编译v2.0 substrate
```
rustup default stable
rustup install nightly-2020-10-06
rustup target add wasm32-unknown-unknown --toolchain nightly-2020-10-06
cargo update -p environmental
cargo +nightly-2020-10-06 build --release
```