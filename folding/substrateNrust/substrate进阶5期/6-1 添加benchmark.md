## 221002

<img src="./img/2022-10-02-17-57-05.png" height="333"> </img>  
ooop

<img src='./img/2022-10-02-17-58-39.png'  height="333"> </img>  
benchmark 确定交易权重

<img src='./img/2022-10-02-21-49-49.png' height=333px></img>  
官方配置，benchmark 配置，希望验证人使用的配置

<img src='./img/2022-10-02-21-52-43.png' height=333px></img>  
benchmark 可用选项

<img src='./img/2022-10-02-21-53-55.png' height=333px></img>  
substrate 已经对数据库读写进行了 benchmark  
读是 25us 微秒，1s 对应 weight 基础值是 1\*10\*\*12，1 毫秒就是 1\*10\*\*9，1 微秒是 1\*10\*\*6

<img src='./img/2022-10-02-21-58-10.png' height=333px></img>  
用 substrate 内置的 benchmark 工具对可调用函数进行基本测试  
以及其它相关资料

<img src='./img/2022-10-02-21-59-43.png' height=333px></img>  
--=  
<img src='./img/2022-10-02-22-02-45.png' height=333px></img>  
--=  
<img src='./img/2022-10-03-10-19-55.png' height=333px></img>  
1，下划线代替 create claim，用例跟可调用函数同名就可用下划线  
2，接下来构建 benchmark 需要的变量和数据，这里是定义 claim，因为 claim 有长度，这里给一个长度区间，从 0 到最大长度。在运行 benchmark 基本测试时，选 d 作为存证长度，每次测试使用不同的 d，从而让 bm 涵盖尽可能多的场景，给出准确的权重值  
3，开始构建存证。  
4，用 whitelist caller 构建交易发送方  
5，构建 bm 的测试环境  
6，verify 用来验证 bm 中数据是否正确，这里省略了。

<img src='./img/2022-10-03-10-22-24.png' height=333px></img>  
--= 1  
<img src='./img/2022-10-03-10-23-02.png' height=333px></img>  
--= 2  
<img src='./img/2022-10-03-10-25-48.png' height=333px></img>  
--= 3  
<img src='./img/2022-10-03-10-26-33.png' height=333px></img>  
--= 4  
1，引入到 librs。意思是当编译标签有 runtime-benchmarks 时，就引入 benchmarkingrs 文件。  
2，把 1 中的标签添加到 runtime toml 里，就是说当 runtime 使用 runtime-benchmark 编译时，poe 模块也是使用 runtime-benchmark 进行编译  
3，runtime 的 librs 里引入 poe benchmark  
4，cargo build --release --features runtime-benchmarks, build 时加入指定的 flag

<img src='./img/2022-10-03-10-27-51.png' height=333px></img>  
--=  
<img src='./img/2022-10-04-10-52-58.png' height=333px></img>  
build 报错，加上 pub use 后子模块才可以依赖，然后 build 成功

<img src='./img/2022-10-05-15-59-49.png' height=333px></img>  
add221005, 对上图报错的解释。

<img src='./img/2022-10-03-10-35-50.png' height=333px></img>  
编译和运行的一些参数，ooov 1130  
编译就是上面做的过程 cargo build --release --features runtime-benchmarks  
因为需要 --template 指定的文件，下面的步骤就是找这个文件

<img src='./img/2022-10-03-10-37-06.png'></img>  
--= 1 https://github.com/paritytech/substrate/blob/polkadot-v0.9.25/.maintain/frame-weight-template.hbs  
<img src='./img/2022-10-03-10-37-25.png' height=333px></img>  
--= 2  
<img src='./img/2022-10-03-10-38-35.png' height=333px></img>  
--= 3  
<img src='./img/2022-10-03-10-39-03.png' height=333px></img>  
--= 4  
<img src='./img/2022-10-03-10-40-04.png' height=333px></img>  
--= 5  
1 的文件拷贝下来粘贴到新建的 2 里  
3 运行，4 拿到结果  
5，生成了 weightrs 和 rawjson

以下为 3 执行的命令。与之前的 ppt 相比多了个--json-file=raw.json \

```
./target/release/node-template benchmark pallet \
 --chain dev \
 --execution wasm \
 --wasm-execution compiled \
 --pallet pallet_poe --extrinsic "*" \
 --steps 20 --repeat 10 \
 --json-file=raw.json \
 --output ./pallets/poe/src/weights.rs \
 --template .maintain/frame-weight-template.hbs
```

<img src='./img/2022-10-03-10-41-53.png' height=333px></img>  
生成的 weightrs ooov

<img src='./img/2022-10-03-10-43-20.png' height=333px></img>  
--= 1  
<img src='./img/2022-10-03-10-59-44.png' height=333px></img>  
--= 2  
<img src='./img/2022-10-03-10-59-27.png' height=333px></img>  
--= 3  
1，poe librs 引入 weightinfo  
add221005 pub mod weights 引入 weightsrs，然后 pub use weights::WeightInfo 使用了 weights，顺序别弄反了。  
2，定义 wi 接口，通过接口形式将权重值传给可调用函数，在模块配置接口 config 里定义  
add221005 type WeightInfo: WeightInfo; 中左侧为新增的一个类型，它需要满足右侧，即第一步中获得的 WeightInfo 的定义。  
3，使用配置接口的 weightinfo ，create claim bm 给出的结果替代原来的默认权重值。（所以这里的 T 意思是配置接口？？？？）

## 221004

<img src='./img/2022-10-04-17-12-46.png' height=333px></img>  
4，具体 3 中使用的 weightinfo 的哪一个实现，需要在 runtime 里定义。在 runtime librs 里找到 pallet poe，写入红色部分  
具体意思是使用 pallet poe 模块，weights 子模块，substrateWeight 这个自定义结构体，并接受范型参数 runtime dddi。  
add221005 应该就是类似 kitties 模块那样，本来可以直接在 poe 里实现具体类型，但为了方便以后的人利用 poe pallet 并自己配置，所以在 poe 里只规定 weightinfo，不做具体实现，在 runtime 里具体实现。而 runtime 又是拿 poe 里的东西来实现，其实是绕了一圈。

<img src='./img/2022-10-04-17-15-08.png' height=333px></img>  
5，点击 4 中的，substrateWeight，出现如图，可以看到有 create claim 这个方法

<img src='./img/2022-10-04-17-16-48.png' height=333px></img>  
6，mock 里也需要实现，使用空 tuple 就行  
此时已经添加了基本的测试结果到可调用函数上面。

<img src='./img/2022-10-04-17-18-47.png' height=333px></img>  
build 报错（此时正常 cargo build --release 就行了，不用再加标签了）  
add221005 之前 build 时加 benchmark 标签是为了执行 bm 获得相关数据，现在已经有数据了，就不用再执行了？？？？

<img src='./img/2022-10-04-17-20-46.png' height=333px></img>  
添加这段后就成功编译了，dddf

<img src='./img/2022-10-04-17-23-00.png' height=333px></img>  
之后再发送 create claim 时，收取的交易费就会包含引入的权重费用了。
