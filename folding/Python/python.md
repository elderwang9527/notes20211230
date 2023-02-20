## 221207

### 数组相关

arr.sort()从小到大排序，注意并不是结果排序，而是使用此命令后 arr 本身自动排序  
arr.sort(reverse=True) 大到小排序

pop 按 index 移除数组元素  
remove 按值移除元素，未测试

## 230110

### ubuntu 升级 python3

<img src='./img/2023-01-10-09-06-15.png' height=333px></img>  
https://www.jianshu.com/p/e6850152e69a  
暂未测试是否有 bug  
但也可直接 ubunt22 而不是 ubunt20，22 自带 python3 为 3.10，20 为 3.6

### list 需要深拷贝，方法：import copy，ori_num_list = copy.deepcopy(num_list)

### 打印变量类型

name = "lili"
print(type(name))

## 230125

### Python·@property 属性

<img src='./img/2023-01-25-01-52-53.png' height=333px></img>

```
class Student(object):
    def __init__(self, score=0):
        self._score = score

    @property
    def score(self):
        print("getting score")
        return self._score

    @score.setter
    def score(self, value):
        print("setting score")
        if not isinstance(value, int):
            raise ValueError("score must be an integer!")
        if value < 0 or value > 100:
            raise ValueError('score must between 0 ~ 100!')
        self._score = value

s = Student(60)
s.score
print("=====================")
s.score = 88
s.score
```

简单来说，加了@property 就可以用 实例.方法 来调用，而不仅仅只能用 方法()

https://blog.csdn.net/qq_37865996/article/details/124205925

### pip 和 pip3 区别

<img src='./img/2023-02-19-22-56-33.png' height=333px></img>

### AttributeError: 'OptionEngine' object has no attribute 'execute'

sqlalchemy 升级到了 2.0，用法有些改变

```
### 原code，会报错
import numpy as np
from sqlalchemy import create_engine
import pandas as pd
import pandas_ta as ta

engine = create_engine('sqlite:///./binance-futures-220203-230204-1min/DOTUSDT.db')
df = pd.read_sql('tablename',engine)
df.Date = pd.to_datetime(df.Date, unit='ms')
df.set_index('Date', inplace=True)
```

```
### 方式1，注意需注释掉 df.Date = pd.to_datetime(df.Date, unit='ms')，可能因为此方法转换了Date为string
from sqlalchemy import create_engine, text as sql_text
import pandas as pd
import pandas_ta as ta
connection = create_engine('sqlite:///../binance-futures-220203-230204-1min/DOTUSDT.db')
query = "SELECT * FROM tablename"
df = pd.read_sql_query(con=connection.connect(),
                            sql=sql_text(query))
# df.Date = pd.to_datetime(df.Date, unit='ms')
df.set_index('Date', inplace=True)
```

```
### 方式2，注意需注释掉 df.Date = pd.to_datetime(df.Date, unit='ms')，可能因为此方法转换了Date为string
import numpy as np
from sqlalchemy import create_engine , text
import pandas as pd
import pandas_ta as ta
engine = create_engine('sqlite:///../binance-futures-220203-230204-1min/DOTUSDT.db')
with engine.begin() as conn:
    query = text("""SELECT * FROM tablename""")
    df = pd.read_sql_query(query, conn)
# df
# df.Date = pd.to_datetime(df.Date, unit='ms')
df.set_index('Date', inplace=True)
```
