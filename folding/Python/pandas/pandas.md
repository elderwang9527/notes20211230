## Pycharm 中 pandas 输出结果省略解决方法

https://zhuanlan.zhihu.com/p/371065358

```
import pandas as pd
#显示所有列
pd.set_option('display.max_columns', None)
#显示所有行
pd.set_option('display.max_rows', None)
```

```
2.显示固定行列的数据。

import pandas as pd
#显示1000列
pd.set_option('display.max_columns', 1000)
 #显示1000行
pd.set_option('display.max_rows', 1000)
#设置每一列中值的最大显示宽度
pd.set_option('display.max_colwidth',1000)
#设置浮点数的最多显示精度
pd.get_option('display.precision')  # 6
pd.Series(data = [1.23456789])
pd.set_option('display.precision',4)
pd.Series(data = [1.23456789236546])
```

## '<' not supported between instances of 'float' and 'method' 报错

<img src='./img/2022-12-03-17-28-51.png' height=333px></img>

因为 diff 是个固定方法，所以报错，所以取列名时尽量别选太通用的词。

## ValueError: The truth value of a Series is ambiguous. Use a.empty, a.bool(), a.item(), a.any() or a.all().

<img src='./img/2022-12-03-17-48-11.png' height=333px></img>  
--=  
<img src='./img/2022-12-03-17-47-08.png' height=333px></img>  
and 替换为&，且每项加上括号

## frame.iloc[:,0:5]

```
  frame = pd.DataFrame(client.get_historical_klines(symbol,
                                                     '30m',
                                                     '50 hours ago UTC'))
    frame = frame.iloc[:,0:5]
```

[a,b]大概是显示前 a 行，前 b 列。但:代表显示所有行，0:5 代表显示第 0-4 列。

## 230103

## dataframe 使用 sqlalchemy 写入 sql 数据库

<img src='./img/2023-01-03-17-17-16.png' height=333px></img>  
--=  
<img src='./img/2023-01-03-17-17-30.png' height=333px></img>

https://wenku.baidu.com/view/d5698fa3bad528ea81c758f5f61fb7360b4c2b18.html  
如是 sqlite 则省略 schema 字段

<img src='./img/2023-01-03-23-46-17.png' height=333px></img>  
上图为写入介绍，此图为自己写的写入和读取实例

## 按各种条件新增列

<img src='./img/2023-01-04-10-01-02.png' height=333px></img>

## 筛选出 df 中满足条件的行

<img src='./img/2023-01-04-10-02-05.png' height=333px></img>

## 取消科学计数法

<img src='./img/2023-01-04-12-17-38.png' height=333px></img>  
网上查到的很多方法如 np.set_printoptions(suppress=True) 等无效，用此方法转为 string 则有效  
示例：

```
a=1
b=10000000
f'{a/b:.20f}'
```

```
profits = [f'{(sell-buy)/buy:.20f}' for sell,buy in zip(sellprices, buyprices)]
profits
```
