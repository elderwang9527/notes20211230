### 1，ao/Awesome Oscillator (AO)

https://www.tradingview.com/support/solutions/43000501826-awesome-oscillator-ao/

大概是用短期 5 天的 sma 减去长期 34 天的 sma。再除以长期的时间长度来判断趋势。正的是涨，负的是跌。

### 2，apo/Absolute Price Oscillator (APO)

类似 ao，只是 apo 以 close 为标准，且 apo 不除以时间长度。

### 3，bias/乖离率

乖离率又称为 y 值，是反映股价在波动过程中与移动平均线偏离程度的技术指标。它的理论基础是：不论股价在移动平均线之上或之下，只要偏离距离过远，就会向移动平均线趋近，据此计算股价偏离移动平均线百分比的大小来判断买卖时机。

```

    Calculation:
        Default Inputs:
            length=26, MA='sma'

        BIAS = (close - MA(close, length)) / MA(close, length)
             = (close / MA(close, length)) - 1
```

### 4，bop

```
bop(open_, high, low, close, scalar=None, talib=None, offset=None, **kwargs)
    Balance of Power (BOP)

    Balance of Power measure the market strength of buyers against sellers.

    Sources:
        http://www.worden.com/TeleChartHelp/Content/Indicators/Balance_of_Power.htm

    Calculation:
        BOP = scalar * (close - open) / (high - low)

```

大概可以理解为，蜡烛线中间的大小和整个长度的比值。值越接近 1，中间越大。

###
