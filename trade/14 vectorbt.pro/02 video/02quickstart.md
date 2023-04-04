## 230317

pip install vectorbt  
如有 numpy 报错，则执行以下  
pip install numpy==1.20

自己看视频前就装了，用的是  
pip install -U "vectorbt[full]"  
装了很久，运行会报错，根据报错找到文件，修改下文件名即可，暂不知道是否会导致之后的错误

<img src='./img/2023-03-17-16-25-01.png' height=333px></img>  
--=  
<img src='./img/2023-03-17-16-24-37.png' height=333px></img>  
用自带的 YFData 获取数据  
也可以自己用 csv 等，但需要保证有 date index 和类型是 pandas.series  
BTC-USD 后加上 ETH-USD 就可以增加一列。但注意只取两者共用的 index。

<img src='./img/2023-03-17-16-38-41.png' height=333px></img>  
官方文档找到 rsi 插件

<img src='./img/2023-03-17-16-41-39.png' height=333px></img>  
--=  
<img src='./img/2023-03-17-16-43-03.png' height=333px></img>  
执行 rsi，注意，要用 rsi.rsi 才能看到直接效果。单独一个 rsi 的话会很复杂，因为可以方便的用它调用各种方法

<img src='./img/2023-03-17-16-49-28.png' height=333px></img>  
--=  
<img src='./img/2023-03-17-16-48-13.png' height=333px></img>  
--=  
<img src='./img/2023-03-17-16-48-39.png' height=333px></img>
如图，设置出入点

<img src='./img/2023-03-17-16-55-08.png' height=333px></img>  
--=  
<img src='./img/2023-03-17-16-54-48.png' height=333px></img>  
portfolio  
回测，并打印出成绩  
简单来说，提供 price，出入点就行了  
也可以打印 pf.total_return()等

<img src='./img/2023-03-17-16-58-47.png' height=333px></img>  
pf.plot().show()  
最简单的画图

<img src='./img/2023-03-17-17-15-42.png' height=333px></img>  
--=  
<img src='./img/2023-03-17-17-15-06.png' height=333px></img>
多个组合快速测试

<img src='./img/2023-03-17-17-17-41.png' height=333px></img>  
--=  
<img src='./img/2023-03-17-17-17-17.png' height=333px></img>
多参数效果

<img src='./img/2023-03-17-17-20-38.png' height=333px></img>  
--=  
<img src='./img/2023-03-17-17-20-05.png' height=333px></img>  
指定时间单位和区间
