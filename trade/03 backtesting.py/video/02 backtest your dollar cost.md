## 230117

<img src='./img/2023-01-17-17-42-20.png' height=333px></img>  
--=  
<img src='./img/2023-01-17-17-45-19.png' height=333px></img>  
为防止已安装的一些包的干扰等问题，可以用 virtualenv venv 创建一个纯净的环境。  
https://www.cnblogs.com/freely/p/8022923.html

<img src='./img/2023-01-17-17-54-54.png' height=333px></img>  
--=  
<img src='./img/2023-01-17-17-53-26.png' height=333px></img>  
这段代码只是为了证明 self.data.Close 是一个 numpy array

## 230118

<img src='./img/2023-01-18-15-33-21.png' height=333px></img>  
上图的 self.data.Close 加上.s 后就是 self.data.Close.s，结果是一个 panda series，含有 index，也即是日期。

<img src='./img/2023-01-18-15-53-44.png' height=333px></img>  
当改为 self.data.Close.s.index.week.dayofweek。即可获得是星期几的数据

<img src='./img/2023-01-26-00-48-34.png' height=333px></img>  
--=  
<img src='./img/2023-01-26-00-47-26.png' height=333px></img>
1,如果是 0-1 之间的小数，代表可用钱数的比例，如果是整数，如 1，2，3 等，则是买那么多股。这里用此方法实现了买尽量多的整数股。  
2，如果投资金额少，或者标的物价格低，一次一股都买不到，可以用此方法。

### 之后的内容看不太懂，需要重学第一课。
