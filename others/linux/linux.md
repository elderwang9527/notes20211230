### ubuntu 安装 nodejs 和 yarn

https://www.jianshu.com/p/c8929bea5fba

```
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get install -y nodejs
npm install -g yarn
```

此方法有可能仍无法使用 yarn，有可能跟服务器已经安装宝塔，而宝塔自带 yarn，全局变量设置有问题。https://stackoverflow.com/questions/71902607/i-installed-yarn-globally-in-my-ubuntu20-vps-but-when-i-use-yarn-it-says-comma 但尝试后目前仍无法解决，换个服务器尝试。

### sudo su 进入 root 模式

### ls -a 查看所有文件，包含隐藏文件
