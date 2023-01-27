## 221105

option  
期权  
option 意思是可以选择性行驶它而非像 forward（远期协议，远期交易） or futures（期货） 那样 必须 在最终交易时交换.

put option  
看跌期权

sell put option  
卖出看跌期权，那就是看涨或者更准确点说是看不跌，因为即使价格不变，你卖出后会获得费用

futures  
期货

## 230123

### ATR/平均真实波幅 指标

```
ATR指标的计算原理和代码实现

ATR指标的计算步骤可大致分为两步：

第一步：计算真实波幅（TR）。

即今日振幅（MAX((HIGH-LOW)）、今日最高与昨收差价（ABS(REF(CLOSE,1)-HIGH))），今日最低与昨收差价（ABS(REF(CLOSE,1)-LOW)）中的最大值。

TR=MAX(MAX((HIGH-LOW),ABS(REF(CLOSE,1)-HIGH)),ABS(REF(CLOSE,1)-LOW))

第二步：利用一段时间的均值计算平均真实波幅（ATR）。

参数N为K线数，一般取14。也可根据习惯的不同，使用10/20/60等值。

ATR=MA(TR,N)

```

https://xueqiu.com/8694603268/221424142

### rsi，to be done
