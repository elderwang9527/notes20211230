## 221127

<img src='./img/2022-11-27-11-59-03.png' height=333px></img>  
学习 backtrader 库  
先学基础规则再实施一个简单的金叉策略。之后再学 quickstart 例子因为 quickstart 可能 overwhelming，

<img src='./img/2022-11-27-13-36-06.png' height=333px></img>  
--=  
<img src='./img/2022-11-27-13-38-10.png' height=333px></img>  
1，获取价格数据  
2，可能是在用 backtrader 时需要这个，不然可能崩溃  
3，cerebro，name of the class handling everything for backtrader

add230110  
class, 类。  
类是模板，而实例则是根据类创建的对象。

<img src='./img/2022-11-27-13-45-28.png' height=333px></img>  
--=  
<img src='./img/2022-11-27-13-45-53.png' height=333px></img>  
把 df 给 cerebro，获得了股票价格走势图  
红色线是 broker account developement？  
还有些解释没听懂

<img src='./img/2022-11-27-13-48-56.png' height=333px></img>  
--= 1  
<img src='./img/2022-11-27-13-49-29.png' height=333px></img>  
--= 2  
<img src='./img/2022-11-27-13-52-07.png' height=333px></img>  
--= 3  
<img src='./img/2022-11-27-13-53-16.png' height=333px></img>  
--= 4  
<img src='./img/2022-11-27-13-54-52.png' height=333px></img>  
--= 5  
复制图一的官方代码粘贴到图二位置  
修改代码到图三，并加上一行图四代码，得到最终图五的回测结果  
蓝线是显示账户余额，蓝圈是显示盈利的交易，红圈是显示亏损的交易

<img src='./img/2022-11-27-13-58-20.png' height=333px></img>  
--=  
<img src='./img/2022-11-27-13-59-22.png' height=333px></img>  
之前的例子是默认只买一手 apple  
这样设置就是把自己资金的 50 趴用来买 apple  
重 run 一遍可以看到得到了多得多的收益

<img src='./img/2022-11-27-14-04-28.png' height=333px></img>  
设置手续费率

<img src='./img/2022-11-27-14-06-11.png' height=333px></img>  
--=  
<img src='./img/2022-11-27-14-07-20.png' height=333px></img>  
--=  
<img src='./img/2022-11-27-14-08-04.png' height=333px></img>  
计算各年度收益

<img src='./img/2022-11-27-14-09-44.png' height=333px></img>  
--=  
<img src='./img/2022-11-27-14-10-17.png' height=333px></img>  
讲解官网 the broker says 这一段代码。因为这段懂了之后的几段都比较好懂。  
log 这段是当一些方法被调用时输出文字  
init 是个 constructer，构造函数。在此例中，只有 closeprice 作为参数

<img src='./img/2022-11-27-14-25-05.png' height=333px></img>  
回答为什么只有 closeprice 作为参数。因为策略是当当前 closprice 小于上个阶段，且上个阶段小于上上个阶段时就买，只跟 cp 相关。（此部分代码位于 next 函数中。）

<img src='./img/2022-11-27-14-38-00.png' height=333px></img>  
notify_order 用来检查一个 order 的状态  
如果已经 submit 或 accepted，就退出此 function  
如果是 completed 且是 buy order，则打印出相关信息

<img src='./img/2022-11-27-14-47-14.png' height=333px></img>  
这是捕捉在哪个时间节点，此 order 被执行  
因为 backtrader 以 iteration 的逻辑运行，它只抓取当前 object 的长度  
例如，假设此 buy order 是在开始测试时的第二天触发，则此 object 的长度是两天。则获取到此 buy 执行在第二个 bar 或者说是 dataframe 的第二 row 行。

<img src='./img/2022-11-27-14-55-45.png' height=333px></img>  
以上一段很重要，因为卖出逻辑是要等到买入后至少 5 天或称 5bar 或称 5row 才执行。

<img src='./img/2022-11-27-15-06-05.png' height=333px></img>  
--=  
<img src='./img/2022-11-27-15-06-24.png' height=333px></img>  
用此策略回测微软股票

<img src='./img/2022-11-27-15-07-58.png' height=333px></img>  
--=  
<img src='./img/2022-11-27-15-08-14.png' height=333px></img>  
将策略参数修改从 5 改为 2，则只需等 2 天。
