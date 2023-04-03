## 230318

<img src='./img/2023-03-18-11-20-03.png' height=333px></img>  
官网找到 from signals method，from orders 也行，但更难  
可以看到很多选项，应该就是可选的参数

<img src='./img/2023-03-18-11-23-05.png' height=333px></img>  
--=  
<img src='./img/2023-03-18-11-23-42.png' height=333px></img>  
--=  
<img src='./img/2023-03-18-11-24-31.png' height=333px></img>  
最初的简单代码

<img src='./img/2023-03-18-11-28-36.png' height=333px></img>
--=  
<img src='./img/2023-03-18-11-28-59.png' height=333px></img>  
简化代码后，plot 如图，可以看到有较大损失，所以试试 sl

<img src='./img/2023-03-18-14-22-43.png' height=333px></img>  
--=  
<img src='./img/2023-03-18-14-21-42.png' height=333px></img>  
止损添上图一就行
这样处理后，sl 仍会超过 0.5 一点，因为要在 next bar 才执行。  
再加上 sl_trail=True 就能实现 trailling stop loss。

<img src='./img/2023-03-18-14-49-14.png' height=333px></img>  
--=  
<img src='./img/2023-03-18-14-49-54.png' height=333px></img>  
更详细的一些设置

<img src='./img/2023-03-18-14-59-26.png' height=333px></img>  
如图，reverse=2 的作用是 stoploss 后，反向再以之前的两倍开仓。

<img src='./img/2023-03-18-15-02-42.png' height=333px></img>  
short 的写法，跟 long 的写法差不多，就是把 exits 和 entries 改成 short_exits, short_entries.

<img src='./img/2023-03-18-15-05-00.png' height=333px></img>  
要在一个策略里又做空又做多，则多添加个 entries2，exit2 就行。

<img src='./img/2023-03-18-15-06-23.png' height=333px></img>  
--=  
<img src='./img/2023-03-18-15-09-22.png' height=333px></img>  
--=  
<img src='./img/2023-03-18-15-08-50.png' height=333px></img>  
如果同一个 bar 既有 long，也有 short 信号，设置为执行 short。

<img src='./img/2023-03-18-15-11-13.png' height=333px></img>  
当正在 long 的过程中，收到个 short 的信号，你想怎么做  
close 的话，就平仓  
reverse，平仓后再开空仓  
closereduce 是降低仓位，而不平仓，但需要 accumulation 是打开的（下面文字的介绍）

<img src='./img/2023-03-18-15-17-33.png' height=333px></img>  
--=  
<img src='./img/2023-03-18-15-18-04.png' height=333px></img>  
accumulation 相关资料  
还有很多其它参数，需要自己发掘
