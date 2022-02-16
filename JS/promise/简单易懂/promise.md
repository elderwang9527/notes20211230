![](./img/2022-02-15-11-15-33.png)  
promise 的三种状态，以及如何切换。pending，resolved（fulfilled），rejected

![](./img/2022-02-15-11-20-27.png)  
执行完同步再执行异步。

![](./img/2022-02-15-11-22-21.png)  
pending 状态的 promise 不触发 then，catch。

![](./img/2022-02-15-11-23-49.png)  
resolved 的可以触发 then。

![](./img/2022-02-15-11-24-46.png)  
rejected 的可以触发 catch。

![](./img/2022-02-15-11-29-08.png)  
![](./img/2022-02-15-11-30-01.png)  
p1.then 返回的仍是 promise。外面是 pending，打开是 resolved/fulfiled。

![](./img/2022-02-15-11-31-59.png)  
加个定时器，则直接是 resolved。结论，promise.then 后不报错最后得到 resolved 的 promise。

![](./img/2022-02-15-11-35-17.png)  
如果报错，则返回 rejected。

![](./img/2022-02-15-11-38-18.png)  
结论。没有抛出异常，then，catch 都返回一个 resolved 状态的 promise。相反，则返回 promise。

### 小测试

![](./img/2022-02-15-11-43-43.png)  
此时打印出 1，3.

![](./img/2022-02-15-11-47-32.png)  
此时打印出 1，2。因为第二个没有抛出异常，所以返回 resolved。而第三个 catch 无法在 resolved 后使用。
