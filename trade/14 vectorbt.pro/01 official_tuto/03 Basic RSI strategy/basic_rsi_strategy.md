## 230319

## Basic RSI strategy

<img src='./img/2023-03-19-09-39-13.png' height=333px></img>

### single backtest

<img src='./img/2023-03-19-09-52-15.png' height=333px></img>  
--=  
<img src='./img/2023-03-19-09-54-06.png' height=333px></img>  
--=  
<img src='./img/2023-03-19-10-07-37.png' height=333px></img>  
--=  
<img src='./img/2023-03-19-10-08-35.png' height=333px></img>  
--=  
<img src='./img/2023-03-19-10-09-43.png' height=333px></img>  
--=  
<img src='./img/2023-03-19-10-10-38.png' height=333px></img>  
--=  
<img src='./img/2023-03-19-10-11-19.png' height=333px></img>  
--=  
<img src='./img/2023-03-19-10-12-13.png' height=333px></img>  
--=  
<img src='./img/2023-03-19-10-13-03.png' height=333px></img>  
--=  
<img src='./img/2023-03-19-10-13-33.png' height=333px></img>  
--=  
<img src='./img/2023-03-19-10-14-15.png' height=333px></img>  
--=  
<img src='./img/2023-03-19-10-14-52.png' height=333px></img>  
--=

### Multiple backtests

<img src='./img/2023-03-19-10-40-50.png' height=333px></img>  
--=  
<img src='./img/2023-03-19-10-41-41.png' height=333px></img>  
--=  
<img src='./img/2023-03-19-10-42-56.png' height=333px></img>  
--=  
<img src='./img/2023-03-19-10-58-49.png' height=333px></img>  
--=  
<img src='./img/2023-03-19-11-00-36.png' height=333px></img>  
--=  
<img src='./img/2023-03-19-11-02-06.png' height=333px></img>

<img src='./img/2023-04-06-10-32-43.png' height=333px></img>  
add 230406  
lower_ths_prod, upper_ths_prod = zip(\*product(lower_ths, upper_ths)) 的意思如图。大概就是分别生成两个数组，让它们的长度一样，使得它们按顺序结合可以遍历完所有的乘积对。  
注意规律，前一个数组和后一个数组的不同，语言很难说清，但看图就能明白。

add 230407  
vbt.Param 是一个用于创建参数网格的类。在这个特定的代码块中，lower_ths_prod 和 upper_ths_prod 是两个列表，它们包含了我们想要测试的所有下限和上限的组合。我们使用 vbt.Param 将这些组合转换为一个参数网格，以便我们可以将它们传递给 rsi.rsi_crossed_below 和 rsi.rsi_crossed_above 函数，以便在所有组合上运行这些函数。这样，我们可以轻松地测试不同的参数组合，以找到最佳的交易策略。

<img src='./img/2023-03-19-11-04-58.png' height=333px></img>  
--=  
<img src='./img/2023-03-19-11-05-31.png' height=333px></img>  
--=  
<img src='./img/2023-03-19-11-06-26.png' height=333px></img>  
--=  
<img src='./img/2023-03-19-11-07-18.png' height=333px></img>  
--=  
<img src='./img/2023-03-19-11-08-00.png' height=333px></img>  
--=  
<img src='./img/2023-03-19-11-08-47.png' height=333px></img>

### summary

<img src='./img/2023-03-19-11-09-34.png' height=333px></img>
