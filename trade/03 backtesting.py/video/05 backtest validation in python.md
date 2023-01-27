## 230126

### in the video, show you a strategy that you can use to combat against overfitting,

<img src='./img/2023-01-26-21-50-05.png' height=333px></img>  
rsi 高时卖，低时买低策略  
虽然期间币价跌了 15%，但 final 却是 103%，所以感觉这是个在熊市的好策略  
但难点是很难分辨此策略是真的找到了好的信号还是凑巧碰到了幸运的参数组合  
解决此问题是增加时间跨度。此例只测了 30 天，但视频准备测此年的每个 30 天。然后图像化回报的分布。

<img src='./img/2023-01-26-22-18-03.png' height=333px></img>  
先直接看结果  
左侧的点显示的是一年内每个 30 天的回报率，中间的数据没听太明白。可以看出此策略并不好，之前的回报率只是刚好运气好而已。

https://data.binance.vision/?prefix=data/spot/monthly/klines/BTCUSDT/1m
