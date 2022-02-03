full-stack-ethereum

安装各种依赖  
npm install ethers hardhat @nomiclabs/hardhat-waffle ethereum-waffle chai @nomiclabs/hardhat-ethers

初始化 hardhat  
npx hardhat

配置 hardhat.config.js

```
module.exports = {
  solidity: "0.8.4",
  paths: {
    artifacts: './src/artifacts',
  },
  networks: {
    hardhat: {
      chainId: 1337
    }
  }
};
```

编译  
npx hardhat compile

运行本地节点  
npx hardhat node

部署合约，先修改 scripts/sample-script.js 为 scripts/deploy.js.

npx hardhat run scripts/deploy.js --network localhost
