## 221119

<img src='./img/2022-11-19-15-02-44.png' height=333px></img>  
problem

<img src='./img/2022-11-19-15-03-18.png' height=333px></img>  
goal

<img src='./img/2022-11-19-16-56-46.png' height=333px></img>  
短线超过长线，即金叉时买入。

<img src='./img/2022-11-19-15-08-31.png' height=333px></img>  
初始代码，红色部分为仅在 jupyter 才需加入

<img src='./img/2022-11-19-15-15-32.png' height=333px></img>  
--=  
<img src='./img/2022-11-19-15-17-02.png' height=333px></img>  
此代码获得 sma 的 sum 和 lma 的 sum。但都是减了最后一天的，因为最后一天要用下面所说的方法获得

<img src='./img/2022-11-19-15-24-00.png' height=333px></img>  
准备代码

<img src='./img/2022-11-19-15-32-27.png' height=333px></img>  
策略代码  
mark

<img src='./img/2022-11-19-15-36-12.png' height=333px></img>  
执行代码，注意在执行前先人工确保 sma 在 lma 下面。这样代码才有效，且这里指定的 symbol 必须和之前输入的 symbol 一样。

<img src='./img/2022-11-19-15-39-54.png' height=333px></img>  
执行结束后会有个这个提示。
