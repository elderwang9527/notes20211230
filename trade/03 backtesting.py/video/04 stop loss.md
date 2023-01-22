## 230121

### 此节学习 stop loss，使用渐增难度的三个例子。理解后就能所有 bt 的 sl 相关了。最先例子是使用一个 buy function。之后会 extending strategy class。

<img src='./img/2023-01-21-11-13-08.png' height=333px></img>  
--=  
<img src='./img/2023-01-21-11-12-30.png' height=333px></img>  
--=  
<img src='./img/2023-01-21-11-11-49.png' height=333px></img>  
一个简单的 stop loss 例子。可能出现图三这种奇怪情况，特别是股票这种非 7\*24 市场。

<img src='./img/2023-01-21-11-19-13.png' height=333px></img>  
如果一个 bar 很高，可能同时触发止损和止盈。backtesting 默认选择止损

create a class witch extends Strategy

## 230116

https://greyhoundanalytics.com/blog/stop-losses-in-backtestingpy/  
不看视频，看文字教程

从哲学上讲，backtesting.py 在执行时是敌对的。也就是说，它尽可能地悲观。这同样适用于止损。如果一个止损和一个获利在同一条内被触发，它会假设止损是先被触发的，从而减少我们的利润。
