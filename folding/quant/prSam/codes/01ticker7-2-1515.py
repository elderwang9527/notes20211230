import pandas as pd
import requests
# 此为视频相关代码，不过修改了tickerurl等相关数据，另外视频里的时间bug已经没有了，所以没有引用datetime。
# 单个交易对的ticker获取

pd.set_option('display.max_columns', None)
pd.set_option('display.max_rows', None)


def get_single_ticker_data(symbol):
    ticker_url = 'https://www.okx.com/api/v5/market/ticker?instId={}'.format(
        symbol)
    res_obj = requests.get(ticker_url)
    json_obj = res_obj.json()['data']
    raw_df = pd.DataFrame(json_obj)
    raw_df['ts'] = pd.to_datetime(raw_df['ts'], unit='ms')

    ticker_df = pd.DataFrame(index=[0], columns=raw_df.index.tolist())
    ticker_df[raw_df.index.tolist()] = raw_df['ticker'].values

    print(raw_df)


def main():
    symbol = 'BTC-USD-SWAP'
    ticker_df = get_single_ticker_data(symbol)


if __name__ == '__main__':
    main()
