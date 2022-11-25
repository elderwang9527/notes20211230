## 221123

<img src='./img/2022-11-24-11-11-35.png' height=333px></img>

创建一个 csv/txt 文件，包含想交易的 coin 和是否在 position 的信息。 当买卖 coin 后，此文件会变化  
py 文件会读取此 csv。获取价格信息，并实施交易策略  
策略是如果未在 postion（应该就是处于未买状态）时，且 fast sma 大于 slow sma 就买入。相反，如果在 position，且\*，则卖出。  
linux/mac 用 cronjob，win 用 task scheduler 来实现脚本执行。

需要前置视频：  
../02/42  
HUGE SCALE Backtest of Intraday Cryptocurrency Data using Python & SQL  
https://www.youtube.com/watch?v=HB1CLz0Z1NY

## add221124 本节特色是有 csv 文件，就能实现多个币种一起执行逻辑。大概做下笔记，需要时再详细看

<img src='./img/2022-11-24-11-18-17.png' height=333px></img>  
csv

<img src='./img/2022-11-24-11-19-22.png' height=333px></img>  
--=  
<img src='./img/2022-11-24-11-21-06.png' height=333px></img>  
--=  
<img src='./img/2022-11-24-11-21-55.png' height=333px></img>  
--=  
<img src='./img/2022-11-24-11-25-21.png' height=333px></img>  
--=  
<img src='./img/2022-11-24-11-34-43.png' height=333px></img>  
--= 过程  
<img src='./img/2022-11-24-11-37-49.png' height=333px></img>  
--=  
<img src='./img/2022-11-24-11-39-04.png' height=333px></img>  
--=  
<img src='./img/2022-11-24-11-41-12.png' height=333px></img>  
--= 定时执行  
<img src='./img/2022-11-24-11-41-38.png' height=333px></img>  
--= 定时执行
