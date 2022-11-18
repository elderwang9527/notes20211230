## 221116

<img src='./img/2022-11-16-10-01-36.png' height=333px></img>  
策略，从币安筛选表现最好的币，如果此币仍在涨就买，止盈和止损

<img src='./img/2022-11-16-10-14-23.png' height=333px></img>  
小币种风险

<img src='./img/2022-11-16-10-19-27.png' height=333px></img>  
开头

<img src='./img/2022-11-16-10-21-08.png' height=333px></img>  
获取只跟 usdt 关联的 pair

<img src='./img/2022-11-16-10-31-30.png' height=333px></img>  
筛选掉有 up 和 down 的带杠杆交易对  
add221118  
之前还有一段未截上屏幕：  
y = x[x.symbol.str.contains('USDT')]

<img src='./img/2022-11-16-10-33-33.png' height=333px></img>  
按价格涨幅排序

<img src='./img/2022-11-16-10-34-25.png' height=333px></img>  
找到涨幅第一的币

<img src='./img/2022-11-16-10-38-05.png' height=333px></img>  
前面几步整合到一起

<img src='./img/2022-11-16-10-41-31.png' height=333px></img>  
引入此 function

<img src='./img/2022-11-16-10-42-31.png' height=333px></img>  
对上面 function 传参得到数据

<img src='./img/2022-11-16-10-44-12.png' height=333px></img>  
这段代码具体啥意思没弄明白，之后删了

<img src='./img/2022-11-16-10-53-43.png' height=333px></img>  
具体策略代码  
aaav 2155e

<img src='./img/2022-11-16-10-55-21.png' height=333px></img>  
执行策略

<img src='./img/2022-11-16-11-02-55.png' height=333px></img>  
以上用的是 historical data api call as stream。这里开始介绍用 binancesockermanage 达到同样的策略

<img src='./img/2022-11-16-11-03-14.png' height=333px></img>  
--=  
<img src='./img/2022-11-16-11-38-26.png' height=333px></img>  
具体策略 aaav 2650e

<img src='./img/2022-11-16-12-07-01.png' height=333px></img>  
执行代码
