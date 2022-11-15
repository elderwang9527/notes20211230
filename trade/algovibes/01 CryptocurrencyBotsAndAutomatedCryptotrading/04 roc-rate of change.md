## 221111

<img src='./img/2022-11-12-01-30-26.png' height=333px></img>  
--=  
<img src='./img/2022-11-12-01-37-14.png' height=333px></img>  
roc rate of change 本节介绍的策略

<img src='./img/2022-11-12-01-44-10.png' height=333px></img>  
获取当前某币数据。这节用的获取数据方法跟上节不一样了。上节是 binancesockermanager，实操中有错误，这节是 websocket。所以不要纠结有问题的地方。  
miniticker，应该是最小的瞬时单位。上节课用的是蜡烛图，是一个时间范围单位

<img src='./img/2022-11-12-01-58-29.png' height=333px></img>  
将数据用 pd 改善

<img src='./img/2022-11-12-02-00-12.png' height=333px></img>  
以上的加个 while true 就能每秒循环获得数据

<img src='./img/2022-11-12-02-04-08.png' height=333px></img>  
--=  
<img src='./img/2022-11-12-02-04-28.png' height=333px></img>  
将之前的文件做些修改后保存为 raw python

<img src='./img/2022-11-12-02-05-23.png' height=333px></img>  
--=  
<img src='./img/2022-11-12-02-06-28.png' height=333px></img>  
执行以上文件得到如图效果，注意可以直接把文件拖到窗口里，则可获得其路径

<img src='./img/2022-11-12-12-35-51.png' height=333px></img>  
引入币安 client  
另外，在第一段加上 import ta，ta 即 technical analysis 库。

## 221112

<img src='./img/2022-11-12-13-02-38.png' height=333px></img>  
--=  
<img src='./img/2022-11-12-13-03-17.png' height=333px></img>  
最终策略代码 aaav 1425 - 2900
最上面被挡住的两行是  
df = pd.DataFrame()  
open_position = False

<img src='./img/2022-11-12-15-29-28.png' height=333px></img>  
实际操作遇到此报错，无法解决  
add  
其实不是报错而是警告。显示不出来 print 的信息是因为缩进写错了。
