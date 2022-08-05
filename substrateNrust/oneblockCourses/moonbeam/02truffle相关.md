![](./img/2022-04-15-11-52-36.png)
truffle 介绍，类似 hardhat，ganache 模拟链，drizzle 是 dapp ui 工具

## ======

![](./img/2022-04-15-16-03-45.png)  
![](./img/2022-04-15-16-04-00.png)  
搭建环境，图一视频教程不全，大致按照图二脚本处理 （add，最终有报错，放弃搭建本地环境）

```
docker --version     ~~(add，这里windows要用docker，是mac就不用)~~  (add,经测试，至少到truffle run moonbeam start这一步时都不用进docker容器里，就在windows里处理，视频之后也更改了说法，因为truffle run moonbeam start本身就是开启一个容器，如果是在容器里，就嵌套了)
docker search ubuntu
docker pull ubuntu:18.04
docker image ls
docker run -t -d --name ubuntu_lesson2 ubuntu:18.04
docker container ls
docker exec -it ubuntu_lesson2 /bin/bash
```

---

---

![](./img/2022-04-15-16-09-29.png)  
安装 nodejs，注意是为 docker 里的 ubuntu 安装，所以即使 win10 已经安装这里还得安装

但还需提前准备 ubuntu 环境，不然无法用 curl 安装 nodejs 等

```
apt-get update  ## add，需要先加这一步，不然之后会报错
apt-get install sudo -y; apt install curl -y; apt install git -y
（每个命令中间输入-y可以省略安装中输入Y的步骤，未测试）

```

然后再安装 nodejs （add，跟下一步的课程教程重复了，省略掉）

```
## 拉起nodejs源码   （add，跟下一步的课程教程重复了，省略掉）
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -  （add，跟下一步的课程教程重复了，省略掉）
## 安装         （add，跟下一步的课程教程重复了，省略掉）
sudo apt-get install -y nodejs      （add，跟下一步的课程教程重复了，省略掉）
```

## ======

![](./img/2022-04-15-16-42-15.png)  
参考课程脚本，本地安装用 install：https://github.com/hyd628/moonbeam-intro-course-scripts/tree/main/week2  
安装 truffle

以下为脚本代码

```
##Install Truffle

curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt install nodejs
node --version

## 以下命令可能会出现缺少hdwallet报错，但npm i hdwallet后再执行就可以了。注意
npm install -g truffle (add 有error但是能使用)
truffle version

##Install Moonbeam Truffle Box

mkdir moonbeam-truffle-box && cd moonbeam-truffle-box
truffle unbox PureStake/moonbeam-truffle-box    (add,视频里到这一步就暂时结束了)

##Install Moonbeam node
truffle run moonbeam install   （add，需要提前 npm install -g @truffle/hdwallet-provider）（大概是安装了一个moonbeam环境的docker镜像）
truffle run moonbeam start  （add，大概是启动了moonbeam容器）
truffle run moonbeam status

##MetaMask Setting Documentation
https://docs.moonbeam.network/cn/getting-started/local-node/using-metamask/


```

![](./img/2022-04-22-09-28-24.png)  
metamask 注册 moonbeam 本地开发节点  
Moonbeam Development Node  
http://127.0.0.1:9933  
1281  
DEV  
如要连接 alpha 测试网，可在此链接处点选：https://docs.moonbeam.network/cn/tokens/connect/metamask/

https://docs.moonbeam.network/cn/tokens/connect/metamask/ 找到并导入开发者账户，以下为 alith：
0xf24FF3a9CF04c71Dbc94D0b566f7A27B94566cac
0x5fb92d6e98884f76de468fa3f6278f8807c48bebc13595d45af5bdc4da702133

尝试转账，然后 docker logs id，可以看到交易记录

## ======

![](./img/2022-04-15-17-46-35.png)  
智能合约介绍

## ======

![](./img/2022-04-15-17-50-08.png)  
![](./img/2022-04-15-17-55-30.png)  
erc20 介绍  
approve，允许另一个地址花掉自己一定额度的 erc20，此地址一般是智能合约

## ======

![](./img/2022-04-15-17-57-36.png)  
moonbeam 本地节点获取测试币，导入开发账号即可。

## ======

![](./img/2022-04-15-17-58-22.png)  
专门的测试网 moonbase alpha 获取测试币方法。

![](./img/2022-04-22-09-58-04.png)  
truffle-config.js 里粘贴对应的私钥就可以部署合约

https://github.com/hyd628/moonbeam-intro-course-scripts/blob/main/week2/truffledeploy.txt

```
truffle run moonbeam start
truffle compile 视频为：truffle compile --all
truffle test
truffle migrate --network dev
truffle migrate --network moonbase
```

部署脚本

之后是 metamask 连接合约，需要时再看
