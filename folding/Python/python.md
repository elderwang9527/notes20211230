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
### 方式1，注意 df.Date = pd.to_datetime(df.Date, unit='ms')，中的ms需改为ns
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
### 方式2，注意 df.Date = pd.to_datetime(df.Date, unit='ms')，中的ms需改为ns
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

## 230227

### if **name** == '**main**':

简单来说，该语句用来当文件当作脚本运行时候，就执行代码；但是当文件被当做 Module 被 import 的时候，就不执行相关代码。

### python 里的代码 existing_excel_file = os.path.join(os.getcwd(), 'lession_1_data', '510050_d.xlsx') 是什么意思

这段 Python 代码的作用是创建一个字符串变量 existing_excel_file，其中包含一个文件的完整路径，这个文件名是 '510050_d.xlsx'，并且这个文件应该位于当前工作目录下的 'lession_1_data' 子目录中。

具体而言，os.getcwd() 函数返回当前 Python 解释器的工作目录，也就是当前正在运行的脚本所在的目录。然后，os.path.join() 函数将当前工作目录与子目录 'lession_1_data' 和文件名 '510050_d.xlsx' 连接起来，形成了一个完整的文件路径。最终，这个完整的文件路径被赋值给变量 existing_excel_file。
