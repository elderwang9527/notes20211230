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
