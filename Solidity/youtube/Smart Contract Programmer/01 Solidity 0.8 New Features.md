![](./img/2022-03-19-10-59-05.png)  
0.8 以前 overflow 不会报错，超过最小变为最大，反之亦然。0.8 以后则会 error。（safemath 功能）

![](./img/2022-03-19-13-58-39.png)  
如果想不报错，就放入 unchecked 里

![](./img/2022-03-19-14-01-46.png)  
custom error  
当使用 string 作为 error 时，gas 费跟 string 长正相关。

![](./img/2022-03-19-14-03-57.png)  
把 string 换成这个 custom error 后，gas 费减少。

![](./img/2022-03-19-14-05-40.png)  
custom error 还能返回一些信息。

![](./img/2022-03-19-14-08-40.png)  
![](./img/2022-03-19-14-08-54.png)  
在合约外面定义 function 和 custom error，就可以在其它合约里引用它们

![](./img/2022-03-19-14-11-40.png)  
可以重命名引入的 function（就不会跟合约里本来就有的重名）

![](./img/2022-03-19-14-13-59.png)  
create2，0.8 以前唯一的方法是使用 assembly。  
（看不太懂，需要时再学习）
