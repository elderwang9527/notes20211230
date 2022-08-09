# 此文件用于记录 solidity 学习中从不同资料里获得的零星知识

---

### internal、private、external、public 区别

public 修饰的变量和函数，任何用户或者合约都能调用和访问。  
private 修饰的变量和函数，只能在其所在的合约中调用和访问，即使是其子合约也没有权限访问。  
internal 和 private 类似，不过， 如果某个合约继承自其父合约，这个合约即可以访问父合约中定义的“内部”函数。  
external 与 public 类似，只不过这些函数只能在合约之外调用 - 它们不能被合约内的其他函数调用。

### function 的修饰词，如 payable,view 等，如果没写，则是默认值 non-payable.

---

### constant view pure 关键字的区别与联系

![](./img/2022-03-20-10-37-32.png)  
如果函数使用了函数外的状态变量，只能用 view 修饰，使用 pure 修饰会报错。如果没有，则都可以修饰，但用 view 会有 warnning。

---

### 16 进制 big number 转 10 进制。合约里是 10 进制，但是前端返回确是 16 进制的 bignumber，所以需要转换下

parseInt(hex, 16)
其中 hex 代表 16 进制值。

(add,以上可能是错误的，需要将 16 改为 10)  
或者可以使用如下方法：  
![](./img/2022-03-22-16-39-56.png)

```
const { ethers } require("ethers")
var a = "0x03"
var b = ethers.BigNumber.from(a)
var c = b.toNumber()
console.log(c)
```

---

### 函数体里设置如 uint 之类的临时变量，不能加 memory 之类的修饰词。

![](./img/2022-03-28-22-10-17.png)

---

### 字符串之间不能直接互相对比，要做如图 abi.encode keccak256，对比 hash 值操作

![](./img/2022-03-30-14-08-03.png)

---

### solidity 没有原生取绝对值的方法，但可以自己定义

https://ethereum.stackexchange.com/questions/121107/how-absolute-value-work-in-solidity

```
function abs(int x) private pure returns (int) {
    return x >= 0 ? x : -x;
}
```

返回值不能写为 uint ，原因见下条

---

### 如果参数是 int，即使知道返回值是非负数，也不能返回 uint。

![](./img/2022-03-30-15-34-39.png)  
![](./img/2022-03-30-15-34-56.png)

---

### 求平方根，sqrt，无原生方法，自己定义

```
pragma solidity ^0.4.18;
contract  MathSqrt {
  function sqrt(uint x) public pure returns(uint) {
    uint z = (x + 1 ) / 2;
    uint y = x;
    while(z < y){
      y = z;
      z = ( x / z + z ) / 2;
    }
    return y;
  }
}

```

https://learnblockchain.cn/question/60

---

### 正负数相互转换，uint int 转换

When converting var from int to uint:

```
if(var < 0) {
    uint(-var);
}
else {
    uint(var);
}
```

When converting var from uint to int:

```
if(var >= uint(-1) {
    //can't cast - out of range of int max
}
else {
    int(var);
}
```

https://ethereum.stackexchange.com/questions/6947/math-operation-between-int-and-uint

```
     function Int2Uint(int256 _intA) public view returns (uint256) {
        if (_intA < 0) {
            return uint256(-_intA);
        } else {
            return uint256(_intA);
        }
    }

```

function 写法

---

### 数组赋值时出现问题，动静态不同，要么用 push，要么定义为静态

![](./img/2022-03-31-14-09-04.png)

### ethers.js 附加正常参数以外的转账数额。Override

https://learnblockchain.cn/question/3521  
https://learnblockchain.cn/docs/ethers.js/api-contract.html#override
![](./img/2022-05-03-13-25-30.png)

### 如何遍历 mapping 映射

需要新建一个数组，和一个初始为 0 的 uint。每次 mapping 增加内容时也同时给此数组增加内容，uint 加 1。这样就能以 uint 为 length，数组为内容遍历。

### ethers.js 如何监听事件 event

![](./img/2022-05-07-19-58-40.png)  
https://ethereum.stackexchange.com/questions/87643/how-to-listen-to-contract-events-using-ethers-js

### 前端调用如遇错误等怎么报错给前端

try{ ... } catch (err) { alert(err.data.message); }

...处填上主代码。

### solidity for 循环，和 js 类似，但是需要声明 uint i。

### 不消耗 gas 判断数组中是否有重复值

可以通过结合 map 的方式判断数组中有无重复值，但 map 必须是状态变量，会消耗 gas。为了免 gas，可以从小到大排列数组，再判断数组中后一个值始终大于前一个值从而确定无重复值。

### 刚部署合约后执行第一次操作，合约可能不能正常执行，可能是因为此时合约还没有余额，无法支付手续费。最好创建合约后先不调用合约方法，不然可能导致第一笔交易损失。先给合约地址转入少量费用，再执行合约调用。

### 智能合约编写习惯，修改了变量值后，就一定要报出事件，来向链外汇报所做的修改。

### 引入 console.log

https://learnblockchain.cn/article/1371  
当项目文件夹不是 vscode 当前根目录时会报错，修改：  
// import "hardhat/console.sol";  
import "../node_modules/hardhat/console.sol";  
https://ethereum.stackexchange.com/questions/111568/hardhat-console-cant-be-resolved-in-vscode  
add，此时报错只是 vscode 报错，hardhat 编译不会报错。而如果使用以上方法，vscode 不报错，但编译会报错。

### 限制输入字符串长度

![](./img/2022-07-07-09-43-23.png)

```

 function testStringLen(string memory testword) public returns (uint256) {
console.log(encode(string));
return 1;
}
```

能在大致范围控制，但无法精确控制

### hardhat: Error: Transaction reverted: function selector was not recognized and there's no fallback function

![](./img/2022-07-15-14-22-25.png)  
原因是未写回退函数，写入以下就行。

```
    event Log(string func, address sender, uint256 value, bytes data);

    fallback() external payable {
        emit Log("fallback", msg.sender, msg.value, msg.data);
    }

    receive() external payable {
        emit Log("receive", msg.sender, msg.value, "");
    }
```
