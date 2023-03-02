## 230228

### 合约切换逐仓和全仓

client.futures_change_margin_type(symbol='ethusdt', marginType="ISOLATED")

全仓为 CROSSED

### python-binance 中 recvWindow 的作用

在 Python-Binance 库中，recvWindow 参数用于设置 Binance API 的响应超时时间，以毫秒为单位。当您向 Binance 发送一个 API 请求时，Binance 服务器将等待一段时间来收集并返回请求的响应数据。如果在这段时间内没有收到响应，则服务器将终止该请求，并返回错误。 recvWindow 参数的作用就是在请求中设置一个时间窗口，告诉服务器要等待多长时间来接收响应数据。

默认情况下，Python-Binance 库的 recvWindow 参数设置为 5000 毫秒。这意味着 Binance 服务器将在 5000 毫秒后终止请求，并返回错误响应。您可以通过在 API 请求中指定 recvWindow 参数来增加或减少此值。例如，如果您希望将 recvWindow 设置为 10 秒，则可以将其设置为 10000 毫秒。
