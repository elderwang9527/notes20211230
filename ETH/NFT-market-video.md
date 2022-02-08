![](./img/2022-02-07-09-17-02.png)  
各种依赖的作用

![](./img/2022-02-07-09-50-23.png)  
matic doc

![](./img/2022-02-07-09-53-31.png)  
公共节点可能会遇到过载问题，所以可以在 infura 自建节点

![](./img/2022-02-07-09-58-54.png)  
注意写法，${}，不想暴露 id 可以单独开个不上传的文件

![](./img/2022-02-07-10-00-32.png)  
安全引入 private key 的方法。

![](./img/2022-02-07-10-06-36.png)  
额外的 function， set token uri 去 set like it sounds the token uri。

![](./img/2022-02-07-10-09-21.png)  
用来增加数字

![](./img/2022-02-07-10-12-35.png)
NFT 继承自 ERC721URIStorage 而 ERC721URIStorage 又继承自 ERC721

![](./img/2022-02-07-10-37-00.png)
using A for B，可用于在合约的上下文中，将库函数（来自库 A）附加到任何类型（B）  
这里的 address 是 market contract 的。用来让 market contract 和 nft contract 交互

![](./img/2022-02-07-10-43-44.png)  
给这个 token 或 marketplace 许可去 transact 这 token between users 和 other contracts。

![](./img/2022-02-07-10-46-12.png)  
想把 token 卖掉需要知道它的 id，所以返回它，客户端可以获知。

![](./img/2022-02-07-10-50-05.png)  
防止 re entry attack 的。

![](./img/2022-02-07-10-56-00.png)  
solidity 没有动态数组，所以需要知道数组长度，所以需要 itemsSold。

![](./img/2022-02-07-11-01-19.png)  
设置 owner 可以方便获得佣金

![](./img/2022-02-07-11-03-27.png)  
尽管这里是 ether，但如果部署到 matic 网则是 matic。

![](./img/2022-02-07-11-18-39.png)  
一个 marketitem 被创建的时候产生的 event，提供给客户端

![](./img/2022-02-07-11-38-51.png)
createMarketItem

![](./img/2022-02-07-11-42-24.png)  
createMarketSale

![](./img/2022-02-07-11-44-25.png)
fetchMarketItems

![](./img/2022-02-07-11-45-27.png)
fetchMyNFTs

sample-test
