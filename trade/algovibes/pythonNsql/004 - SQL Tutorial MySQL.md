## 221102

<img src='./img/2022-11-02-21-17-51.png' height=333px></img>  
dbms 例举  
mysql 为本文所讲，且是开源的

<img src='./img/2022-11-02-21-33-39.png' height=333px></img>  
 mysql 下载方式，别选页面上方的 download，会付费。选页面下方此处

<img src='./img/2022-11-02-21-45-58.png' height=333px></img>  
mysql workbench

<img src='./img/2022-11-02-21-55-48.png' height=333px></img>  
在 mysql 中，schema 类似 db，在里面存放 tables，所以先创建个 db 或称之为 schema。以下简称 sm  
sql 不区分大小写，所以 CrEaTe 等同于 create  
输入如图，点击闪电图标，出现下方绿色反馈。再在左侧刷新就能显示此 sm 了。  
要删掉此 sm 输入 drop schema schemaname 点击闪电即可。  
这里 schema 可以写为 database，一样的效果

<img src='./img/2022-11-02-22-02-16.png' height=333px></img>  
之前只有 sm 没有 table，这里创建叫 sales 的 table，有两个 column，一个叫 location name 里面存储不超过 50 个字母的 text。一个叫 revenue，存储 int。

<img src='./img/2022-11-02-22-20-04.png' height=333px></img>  
这段意思是选择 sales table 的所有 column

<img src='./img/2022-11-02-22-21-47.png' height=333px></img>  
闪电执行后，显示如图的 cloumns，简称 clms

<img src='./img/2022-11-02-22-28-16.png' height=333px></img>  
执行步骤 2 给 clms 添加内容，但此时还无法显示内容，再执行 1 则可看到 3 的内容

<img src='./img/2022-11-03-01-07-21.png' height=333px></img>  
也可以筛选指定的 clms

<img src='./img/2022-11-03-01-09-42.png' height=333px></img>  
可以一次添加多组数据

<img src='./img/2022-11-03-01-13-12.png' height=333px></img>  
筛选出指定 clms 名的数据

<img src='./img/2022-11-03-01-14-04.png' height=333px></img>  
还可以加限定条件

<img src='./img/2022-11-03-01-42-35.png' height=333px></img>  
将 seatle 50 变为 seatle 40

<img src='./img/2022-11-03-01-43-54.png' height=333px></img>  
上一步有可能会遇到报错，如遇报错就这样设置，但之后需要设置回来

<img src='./img/2022-11-03-01-46-03.png' height=333px></img>  
1 是删除 sales table 的指定项，如没有第二行 where，则应该是 sales table 所有内容都删掉
2 的作用是在删除前确定要删除的内容

<img src='./img/2022-11-03-01-49-18.png' height=333px></img>  
aggregation function 举例

<img src='./img/2022-11-03-01-51-05.png' height=333px></img>  
1 显示其它内容  
2 筛选指定信息

<img src='./img/2022-11-03-01-53-59.png' height=333px></img>  
限定条件 group by

<img src='./img/2022-11-03-01-58-19.png' height=333px></img>  
新增一个叫 state 的 table

<img src='./img/2022-11-03-02-01-01.png' height=333px></img>  
为新 table 添加内容     


