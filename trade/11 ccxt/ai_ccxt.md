### ccxt 用法

### 请写出用 ccxt 库在币安发起一个 DOGEUSDT 的 10 倍看多杠杆合约

总结：  
开多：BUY，LONG  
平多：SELL，LONG  
开空：BUY，SHORT  
凭空：SELL，SHORT

平的时候 quantity 似乎可以设置得超过开的时候获得的 quantity，甚至可以设置很大，就可以不用查询 quantity，直接完全平掉仓位。

```
import ccxt
from api_key import api_key, api_secret

# 创建交易所对象
exchange = ccxt.binance({
    'apiKey': api_key,
    'secret': api_secret,
    'enableRateLimit': True
})

# 设置交易所账户杠杆
exchange.fapiPrivate_post_leverage({
    'symbol': 'DOGEUSDT',
    'leverage': 10
})

# 发起看多杠杆合约订单
order = exchange.fapiPrivate_post_order({
    'symbol': 'DOGEUSDT',
    'side': 'BUY',
    'type': 'LIMIT',
    'quantity': 100,  # 持仓数量
    'price': 0.07,  # 持仓价格
    'timeInForce': 'GTC',
    'leverage': 10,  # 杠杆倍数
    'positionSide': 'LONG',  # 持仓方向
#     'reduceOnly': False,  # 是否只减仓
    'newOrderRespType': 'FULL'
})

print(order)


```

add  
newOrderRespType 意思

```
newOrderRespType 是在发起订单时指定的参数之一，用于指定新订单的响应类型。它是可选参数，不设置时默认为 ACK。

在币安 API 中，newOrderRespType 可以设置为以下三种类型之一：

ACK：表示只返回订单号，不返回订单详情。
RESULT：表示返回订单号和订单详情。
FULL：表示返回订单号、订单详情和订单状态信息。
一般情况下，如果您只需要订单号作为确认，可以选择设置 newOrderRespType 为 ACK，以提高执行速度。如果您需要更详细的订单信息，可以将其设置为 RESULT 或 FULL。
```

add  
以上为限价开多，如需市价开多：

```
order = exchange.fapiPrivate_post_order({
    'symbol': 'DOGEUSDT',
    'side': 'BUY',
    'type': 'MARKET',
    'quantity': 100,  # 持仓数量
    'leverage': 10,  # 杠杆倍数
    'positionSide': 'LONG',  # 持仓方向
    'newOrderRespType': 'FULL'
})
```

市价开空：

```
order = exchange.fapiPrivate_post_order({
    'symbol': 'DOGEUSDT',
    'side': 'SELL',
    'type': 'MARKET',
    'quantity': 100,  # 持仓数量
    'leverage': 10,  # 杠杆倍数
    'positionSide': 'SHORT',  # 持仓方向
    'newOrderRespType': 'FULL'
})

```

市价平多:

```
order = exchange.fapiPrivate_post_order({
    'symbol': 'DOGEUSDT',
    'orderId': '1234567',
    'side': 'SELL',  # 平仓方向，如果持有多头仓位，则设置为'sell'，持有空头仓位则设置为'buy'
    'type': 'MARKET',  # 市价单
    'quantity': 1000,  # 持仓数量
    'positionSide': 'LONG',  # 持仓方向
})

```

### 获得所有未成交限价单

fapiPrivate_get_openorders()
