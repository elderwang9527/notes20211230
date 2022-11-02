## 221102

## 构建自己的 fi db，包含股价等信息

<img src='./img/2022-11-02-18-28-23.png' height=333px></img>  
这两个分别是获得印度股票和道琼斯指数的 symbol

<img src='./img/2022-11-02-18-42-38.png' height=333px></img>  
获取 data，要下载较长时间

<img src='./img/2022-11-02-18-48-42.png' height=333px></img>  
--=  
<img src='./img/2022-11-02-18-48-57.png' height=333px></img>  
显示出来的 df

<img src='./img/2022-11-02-20-31-15.png' height=333px></img>  
此 function 用于创建 db engine，只适用于 sqlite db，如果用于 mysql 或其它，则需要 schema  
此处创建了 india 和 us 两个 engine

<img src='./img/2022-11-02-20-38-19.png' height=333px></img>  
将 两个 df 存入 两个 db 的函数  
还未写完，这部分意思是让 df 的各种数据和 symbols 一起遍历

<img src='./img/2022-11-02-20-39-19.png' height=333px></img>  
--=  
<img src='./img/2022-11-02-20-43-46.png' height=333px></img>  
这部分实际无需运行，只是看下具体内容，us[0]的意思是第一个股票 symbol 对应的数据。

<img src='./img/2022-11-02-21-01-58.png' height=333px></img>  
执行完成

<img src='./img/2022-11-02-21-03-19.png' height=333px></img>  
软件查看相关数据

<img src='./img/2022-11-02-21-05-04.png' height=333px></img>  
--=  
<img src='./img/2022-11-02-21-05-41.png' height=333px></img>  
读取 apple 数据，以及筛选出 winning day 的数据。

<img src='./img/2022-11-02-21-07-26.png' height=333px></img>  
注意带点号的数据要加引号包裹，因为点号在 sql 中是有意义的
