## 221119

## 此节获取数据的效率不高，因为此视频较早，后面应该会有效率更高的方法

<img src='./img/2022-11-19-22-35-12.png' height=333px></img>  
info

<img src='./img/2022-11-19-22-36-17.png' height=333px></img>  
获得 symbols  
用 len(symbols)可获得总数

<img src='./img/2022-11-19-22-40-39.png' height=333px></img>  
去掉带杠杆的 pair

<img src='./img/2022-11-19-22-41-47.png' height=333px></img>  
筛选出 usdt 交易对

<img src='./img/2022-11-19-22-48-49.png' height=333px></img>  
获得 kline，据说此方法效率不高

<img src='./img/2022-11-19-22-50-45.png' height=333px></img>  
此方法获得了每分钟变化量

<img src='./img/2022-11-19-22-51-46.png' height=333px></img>  
再上图的基础上做点修改就算出了一个交易对的一小时内改变量。

<img src='./img/2022-11-19-22-54-44.png' height=333px></img>  
找到各个 pair 的变化率。

<img src='./img/2022-11-19-22-56-03.png' height=333px></img>  
筛选出变化率最大的 10 个，之后可根据此变化率做交易。
