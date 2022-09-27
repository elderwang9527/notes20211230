## 220924

![](./img/2022-09-25-00-42-26.png)  
--=  
![](./img/2022-09-25-00-43-31.png)  
此次用 4.0.0alpha 版本  
ink 是 rust 写的 dsl，能编译成 wasm，此 wasm 能在 substrate 上运行  
rust 已有各种库，只要这些库能编译成 wasm，都能拿给 ink 用，这是相比 solidity，move 等的优点。如能原生的解析 json 文件，实现 zk 等

![](./img/2022-09-25-00-52-57.png)  
ink solidity 区别

![](./img/2022-09-25-00-55-23.png)  
--=  
![](./img/2022-09-25-01-02-02.png)
https://docs.substrate.io/tutorials/smart-contracts/prepare-your-first-contract/  
https://github.com/paritytech/substrate-contracts-node.git
初始设置  
只有 rustup component add rust-src --toolchain nightly 是安装，rustup target add wasm32-unknown-unknown --toolchain nightly 只是 verify  
官网和截图有区别，如果是 mac 系统，以截图为准  
cargo-contract 生成编译 ink 合约，而安装 cargo-contract 需要 dylint-link 依赖  
cargo-contract 2.0.0 匹配 ink4.0.0

![](./img/2022-09-25-01-26-23.png)  
前端  
https://contracts-ui.substrate.io/  
polkadotjs 也行

![](./img/2022-09-25-01-28-31.png)  
合约架构  
类似 soldity

![](./img/2022-09-25-01-32-49.png)  
支持的存储类型，正在变动中

![](./img/2022-09-25-01-35-31.png)  
ink 可以使用 runtime 里写好的一些方法

![](./img/2022-09-25-01-50-13.png)  
lllf

![](./img/2022-09-25-01-51-38.png)  
工具推荐
