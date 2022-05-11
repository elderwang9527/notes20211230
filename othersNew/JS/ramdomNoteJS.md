### 对象数组里面给每个对象添加新属性并赋值

```
  var arry = [
    { a: 11, b: 22, c: 33, d: 44 },
    { a: 11, b: 0, c: 0, d: 44 },
    { a: 11, b: 22, c: 99, d: 99 },
  ];
  var arry2 = [];
  arry.map((item, index) => {
    undefined;
    arry2.push(Object.assign({}, item, { mess1: item.c, mess2: item.d }));
  });
  console.log(arry2);
```

https://blog.csdn.net/bangu1962/article/details/101292936

---

### 取整，去掉小数点。双波浪线最方便

https://www.cnblogs.com/hikki-station/p/13792646.html  
JS 去掉小数点  
parseInt(3.14159) => 3  
~~3.14159 => 3  
还有：  
向上取整 Math.ceil(3.14159) => 4  
向下取整 Math.floor(3.14159) => 3  
四舍五入 Math.round(3.14159) => 3

---

## package.json 和 package-lock.json 的区别

https://zhuanlan.zhihu.com/p/343698322  
package-lock.json 是在运行“npm install”时生成的一个文件，用于记录当前状态下项目中实际安装的各个 package 的版本号、模块下载地址、及这个模块又依赖了哪些依赖。  
为什么有了 package.json，还需要 package-lock.json 文件呢，当 node_modules 文件夹并不存在或被删除时，需要用到 npm install 重新装载全部依赖时，通过 package-lock.json 可以直接表明下载地址和相关依赖，相对下载速度也更快，也不容易报错。

## 判断某数组中书否有重复值

![](./img/2022-05-08-19-16-38.png)

## 有时候以为是数字的类型其实是字符串，就容易出现错误，可以 parseInt(string)转换为数字
