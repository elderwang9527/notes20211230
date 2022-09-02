## 2022/08/10

![](./img/2022-08-10-10-25-01.png)  
不以 self 为第一参数的关联函数不是方法。

![](./img/2022-08-10-10-32-07.png)  
panic 更趋向程序错误而不是使用错误，所以如果给用户看的话，最好用 result 而不是 panic

![](./img/2022-08-10-10-41-52.png)  
unwrap_or_else  
ooop

### rust vscode 格式化

rust 安装了 rust-analyzer 后可能仍无法用 ctrl s 格式化，则按 alt shift s，会出现配置 rust 格式化语言的选项，会自动在 settings.json 中添加

```

"[rust]": {
"editor.defaultFormatter": "rust-lang.rust-analyzer"
},

```

之后就可以 ctrl s 格式化了

## 2022/08/11

![](./img/2022-08-11-17-18-57.png)  
方法里的&self 实际是 self:&Self 的语法糖。所以似乎里面用 self 或&self 都行。

## 0812

![](./img/2022-08-12-11-23-46.png)  
ooop  
![](./img/2022-08-13-21-38-48.png)  
add，注意这里 impl 定义方法时用的是 self 而不是&self，其实 self 也是可以用的，只是用得少，不是不能用。

![](./img/2022-08-12-14-07-48.png)  
范型 impl 时，不仅可以\<T>还可以类似\<f32>这样针对具体类型

## 220901

### rust 的 from 和 into

![](./img/2022-09-01-13-56-25.png)  
https://www.cnblogs.com/jiangbo4444/p/15626930.html  
基础类型可以通过 as 关键字进行转换，如果是自定义类型，则通过 From 和 Into 进行转换。  
如 impl from for Atype, 则 Atype::from(Btype) = x，x 也为 Atype。  
如果实现了 From，则自动获得了 Into，不过需要手动指明类型。  
let x: Atype = Btype.into();
