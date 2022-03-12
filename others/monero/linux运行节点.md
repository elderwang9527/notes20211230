想用 vps 挖矿门罗，找到了这个 p2p 挖矿方法：https://github.com/SChernykh/p2pool，提到需要先运行节点，参考此教程：https://sethforprivacy.com/guides/run-a-monero-node-advanced/。此文件用于记录此教程笔记，学会运行门罗节点，但为了方便最好还是用中心化矿池教程https://www.yuque.com/skypool/cpu/wu8sx8。通过https://pools.xmr.wiki/ 看到的 cn 矿池的教程

1，应该可以省略 UFW 一节，防止 vps 其它端口被封。

2，注意 data-dir=/var/lib/monero/.bitmonero 此处开始是文件内容不是输入的命令
