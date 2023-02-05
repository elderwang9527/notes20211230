## 230203

### kline 周期

1m
3m
5m
15m
30m
1h
2h
4h
6h
8h
12h
1d
3d
1w
1M

## 230204

### data.binance.vision 数据选项

#### 普通的先用 klines 就是了，逐笔的用 trades 就是，其它的没太懂，但作用应该不大

um = usdt-based cm = coin-based

aggTrades/

indexPriceKlines/  
类似 klines，但精确到小数点后 8 位

klines/  
标准 ohlcv，精确到小数点后 5 位

markPriceKlines/

看上去跟 indexPriceKlines 类似，但数据有些小差异，以下为网友解答，没看懂

```

If I'm not mistaken mark price is the price the perps or other derivs are trading at, while index price is the price derived from an index so it tracks the underlying asset. If memory serves liquidations reference index price (as it should be more stable)

```

metrics/

premiumIndexKlines/

trades/  
应该是逐笔订单
