创建一个 next app，不用新开一个文件夹，会自动创建新文件夹 digital-marketplace
npx create-next-app digital-marketplace

安装各种依赖，一行一行 npm install

```
cd digital-marketplace

npm install ethers hardhat @nomiclabs/hardhat-waffle \
npm install ethereum-waffle chai @nomiclabs/hardhat-ethers \
npm install web3modal @openzeppelin/contracts ipfs-http-client@50.1.2 \
npm install axios
```

```
npm install ethers hardhat @nomiclabs/hardhat-waffle ethereum-waffle chai @nomiclabs/hardhat-ethers web3modal @openzeppelin/contracts ipfs-http-client@50.1.2 axios
```

安装 css 框架 Tailwind
npm install -D tailwindcss@latest postcss@latest autoprefixer@latest

create the configuration files needed for Tailwind to work with Next.js (tailwind.config.js and postcss.config.js) by running the following command:

npx tailwindcss init -p

修改 tailwind.config.js:

```
/* tailwind.config.js */
module.exports = {
  content: [
    "./pages/**/*.{js,ts,jsx,tsx}",
    "./components/**/*.{js,ts,jsx,tsx}",
  ],
  theme: {
    extend: {},
  },
  plugins: [],
}
```

清空 styles/globals.css 以下面内容代替

@tailwind base;
@tailwind components;
@tailwind utilities;
