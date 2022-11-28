## 221127

<img src='./img/2022-11-27-10-41-45.png' height=333px></img>  
1，用 binance api 获取 15 分钟价格数据  
2，用 sma 和 rsi 策略  
3，达到了买入点则以现价的 97%下限价单。  
4，当下次 close price 超过现在时卖出或经过 10 个 tick 15\*10 min 后卖出
