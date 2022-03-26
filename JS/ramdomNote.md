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
