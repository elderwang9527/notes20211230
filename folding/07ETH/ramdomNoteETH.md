### nonce

以太坊交易中为了防止交易重播，ETH 节点要求每笔交易必须有一个 nonce 数值。每一个账户从同一个节点发起交易时，这个 nonce 值从 0 开始计数，发送一笔 nonce 对应加 1。当前面的 nonce 处理完成之后才会处理后面的 nonce。

注意这里的前提条件是相同的地址在相同的节点发送交易。
以下是 nonce 使用的几条规则：
● 当 nonce 太小（小于之前已经有交易使用的 nonce 值），交易会被直接拒绝；
● 当 nonce 太大，交易会一直处于队列之中，直到补齐开始 nonce 到那个值之间的 nonce，那么交易依旧可以被执行。

https://zhuanlan.zhihu.com/p/312917514

### 自动在 metamask 添加网络：https://chainlist.org/zh

### 以太坊 eth 单位换算

![](./img/2022-01-12-11-30-46.png)

