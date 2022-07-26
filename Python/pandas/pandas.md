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
