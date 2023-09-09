![](./img/2022-01-15-21-20-47.png)      

![](./img/2022-01-15-21-21-54.png)

![](./img/2022-01-15-21-26-54.png)
moonbeam 阿尔法测试网代币申请

![](./img/2022-01-15-21-35-43.png)
这节课要部署的是openZeppelin erc20合约。openZeppelin是开源的智能合约库，经过审计，所以安全性有保证。

![](./img/2022-01-15-21-41-18.png)      
视频有问题，所以截图自己的代码。truffle-config.js最上面是本地开发节点私钥和阿尔法测试链私钥。此文件可以部署两个不同网络     

![](./img/2022-01-15-21-45-21.png)      
导出账户私钥的方法，并粘贴私钥进config.js。这样truffle就可以使用这个账户来部署智能合约。        

![](./img/2022-01-15-21-48-23.png)      
contract里有两个智能合约migration是帮助部署的合约。mytoken则是这次要部署的合约。        

![](./img/2022-01-15-21-49-46.png)      
migrations是truffle的目录，第一个文件不重要。第二个文件决定部署哪些智能合约以及部署顺序。       

![](./img/2022-01-15-21-51-55.png)
这个是用truffle ganache功能写的本地的智能合约测试。     

![](./img/2022-01-15-21-53-31.png)      
truffle run moonbeam start启动本地节点，truffle compile编译合约。录像没显示出来。       

![](./img/2022-01-15-21-56-04.png)
用truffle test做智能合约测试。用了truffle ganache功能。

![](./img/2022-01-15-21-57-55.png)
truffle migrate --network dev部署智能合约到本地节点。这里用reset是因为部署了一次。第一次部署不用加。

![](./img/2022-01-15-21-58-49.png)      
docker logs ID   本地节点显示收到了部署合约的交易。     

![](./img/2022-01-15-22-01-00.png)
truffle migrate --network moonbase 部署到moonbeam测试网     

![](./img/2022-01-15-22-02-10.png)
metamask连接到moonbase alpha        

![](./img/2022-01-15-22-03-13.png)      
填写智能合约地址就可显示代币。