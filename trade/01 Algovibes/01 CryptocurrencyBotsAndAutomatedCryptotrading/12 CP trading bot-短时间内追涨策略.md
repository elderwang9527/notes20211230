## 221120

## 此节较复杂，只看代码可以直接从 l51 看起。

<img src='./img/2022-11-20-10-52-53.png' height=333px></img>  
本期内容  
获取实时价格，存储这些价格到 sql db，算出最后几分钟表现最好的，止盈或止损

<img src='./img/2022-11-20-11-11-38.png' height=333px></img>  
--=  
<img src='./img/2022-11-20-11-12-30.png' height=333px></img>  
--=  
<img src='./img/2022-11-20-13-57-22.png' height=333px></img>  
获取数据并存入数据库的代码  
最后图被隐藏的部分是  
async def main()

<img src='./img/2022-11-20-22-49-42.png' height=333px></img>  
另一个脚本，获取上个步骤写入的数据  
可换为其它 symbol  
只是演示原理，实际是用下一个脚本来实施策略

<img src='./img/2022-11-20-23-41-39.png' height=333px></img>  
实际的策略脚本，需要注意它可以转换为纯 py 文件，之所以这样是因为之后想要每分钟定时执行它  
creds 这一行可以直接用公钥，私钥代替  
datetime 用来在 db 中过滤数据，for the last n mins。

<img src='./img/2022-11-20-23-53-38.png' height=333px></img>  
--=  
<img src='./img/2022-11-20-23-57-41.png' height=333px></img>  
--=  
<img src='./img/2022-11-20-23-58-09.png' height=333px></img>  
获得了一个 symbol 距今 10min 内的数据。  
注意需要加减一个和币安相差的时差

## 221121

<img src='./img/2022-11-21-10-19-01.png' height=333px></img>  
获得各个 symbol 在此前 3 分钟的变化率

<img src='./img/2022-11-21-10-20-29.png' height=333px></img>  
找到此前 3 分钟变化率最高的 symbol

<img src='./img/2022-11-21-10-54-58.png' height=333px></img>  
--=  
<img src='./img/2022-11-21-10-56-02.png' height=333px></img>  
--=  
<img src='./img/2022-11-21-10-56-40.png' height=333px></img>  
--=  
<img src='./img/2022-11-21-10-57-49.png' height=333px></img>  
l51  
在此之前有很多讲解，不好做笔记，就直接截图完成后的代码

<img src='./img/2022-11-21-11-04-29.png' height=333px></img>  
--=  
<img src='./img/2022-11-21-11-05-13.png' height=333px></img>  
--=  
<img src='./img/2022-11-21-11-05-36.png' height=333px></img>  
--=  
<img src='./img/2022-11-21-11-05-49.png' height=333px></img>  
--=  
<img src='./img/2022-11-21-11-06-47.png' height=333px></img>  
--=  
<img src='./img/2022-11-21-11-07-03.png' height=333px></img>  
--=  
<img src='./img/2022-11-21-11-07-20.png' height=333px></img>  
--=  
<img src='./img/2022-11-21-11-07-38.png' height=333px></img>  
将之前的 jupyter 转换为纯 py 文件  
可能也做了些修改

<img src='./img/2022-11-21-11-09-37.png' height=333px></img>  
--=  
<img src='./img/2022-11-21-11-10-55.png' height=333px></img>  
--=  
<img src='./img/2022-11-21-11-11-30.png' height=333px></img>  
这样就开启了定时任务，应该是每分钟执行一次  
此为 mac 系统，作者简单说了 win 系统怎么做，linux 系统得自己研究了
