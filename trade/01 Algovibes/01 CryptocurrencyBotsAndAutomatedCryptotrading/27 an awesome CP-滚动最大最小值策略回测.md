## 221203

<img src='./img/2022-12-03-10-36-10.png' height=333px></img>  
回测一个有趣的日内交易策略

<img src='./img/2022-12-03-10-39-42.png' height=333px></img>  
创建一个 rolling maximum high 和 rolling minimum low 的 channle-通道。  
前者是黄线，后者是蓝线，红线是两者的平均值，蓝绿色线是每日最新 close 价。  
当 close 超过红线时买入，当 close 接近黄线时卖出。

### 需要以下两个前置视频

https://www.youtube.com/watch?v=_IV1qfSPPwI  
已看过
https://www.youtube.com/watch?v=rYfe9Bg2GcY  
还未看

<img src='./img/2022-12-03-10-46-02.png' height=333px></img>  
初始代码

<img src='./img/2022-12-03-10-48-32.png' height=333px></img>  
新增 rollinghigh 列

<img src='./img/2022-12-03-10-55-03.png' height=333px></img>  
--=  
<img src='./img/2022-12-03-10-57-11.png' height=333px></img>  
类似方法新增其它很多列  
其中 midcross 是只有当 close-a-mid 从 0 变为 1 时才为 true。此时才买入

<img src='./img/2022-12-03-11-18-02.png' height=333px></img>  
标记出买入和卖出的 date，并存入两个数组中  
由于在出现信号之后才能买入卖出，所以 i+1

<img src='./img/2022-12-03-11-21-04.png' height=333px></img>  
画出图像

<img src='./img/2022-12-03-11-23-38.png' height=333px></img>  
--=  
<img src='./img/2022-12-03-11-24-04.png' height=333px></img>  
--=  
<img src='./img/2022-12-03-11-25-23.png' height=333px></img>  
创建 tradesdf，注意各个转换达到的效果

<img src='./img/2022-12-03-11-27-16.png' height=333px></img>  
计算出每个 tick 的收益  
inplace=True 可以丢掉无效值

<img src='./img/2022-12-03-11-29-53.png' height=333px></img>  
算出运行期间总利润。  
0.0015 是买卖各 0.00075 的手续费  
结果约 1.021，也就是大约 2.1%的总利润

<img src='./img/2022-12-03-11-32-29.png' height=333px></img>  
--=  
<img src='./img/2022-12-03-11-32-41.png' height=333px></img>  
调整下回测周期，得到大约百分之 8 利润

<img src='./img/2022-12-03-11-34-30.png' height=333px></img>  
但调整为其它币，就亏损了，再调整其它参数就又盈利了。所以此策略是否盈利可能有运气原因，也可能跟各参数有关。
