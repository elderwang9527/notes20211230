## 221018

<img src='./img/2022-10-18-14-44-53.png' height=333px></img>  
目前普通的电脑可能有 1 秒 10 亿条指令的性能

<img src='./img/2022-10-18-14-46-01.png' height=333px></img>  
aaap

<img src='./img/2022-10-18-14-46-39.png' height=333px></img>  
上级最后的例子其实是一个做除法的程序

<img src='./img/2022-10-18-14-47-29.png' height=333px></img>  
上集的除法很低效，因为本质是做很多个减法。这里直接在硬件层面做除法。只是这会让 alu 变得更复杂

<img src='./img/2022-10-18-14-53-51.png' height=333px></img>  
--=  
<img src='./img/2022-10-18-14-54-07.png' height=333px></img>  
--=  
<img src='./img/2022-10-18-14-54-29.png' height=333px></img>  
--=  
<img src='./img/2022-10-18-14-54-53.png' height=333px></img>  
--=  
<img src='./img/2022-10-18-14-55-06.png' height=333px></img>  
aaap

<img src='./img/2022-10-18-14-55-53.png' height=333px></img>  
较早的 cpu 只有几十条指令，现在的可能有上千条

<img src='./img/2022-10-18-14-57-11.png' height=333px></img>  
cpu 和 ram 之间传递数据的线叫总线 bus

<img src='./img/2022-10-18-19-17-08.png' height=333px></img>  
--=  
<img src='./img/2022-10-18-19-17-31.png' height=333px></img>  
虽然电信号速度接近光速，但 cpu 的频率也非常高，为了降低延迟，可以直接在 cpu 里弄个 ram，叫做 cache

<img src='./img/2022-10-18-19-20-01.png' height=333px></img>  
cache 实现了批量传数据

<img src='./img/2022-10-18-19-21-17.png' height=333px></img>  
一个周期就能拿到数据，所以不用空等

<img src='./img/2022-10-18-19-21-50.png' height=333px></img>  
aaap

<img src='./img/2022-10-18-19-23-30.png' height=333px></img>  
ooov  
其它关于缓存的介绍

<img src='./img/2022-10-18-19-24-01.png' height=333px></img>  
--=  
<img src='./img/2022-10-18-19-25-43.png' height=333px></img>  
--=  
<img src='./img/2022-10-18-19-25-25.png' height=333px></img>  
aaap  
ooov

<img src='./img/2022-10-18-19-26-39.png' height=333px></img>  
--=  
<img src='./img/2022-10-18-19-27-46.png' height=333px></img>  
--=  
<img src='./img/2022-10-18-19-28-21.png' height=333px></img>  
aaap

<img src='./img/2022-10-18-19-29-22.png' height=333px></img>  
ooov  
效率更高也更复杂的一种方式

<img src='./img/2022-10-18-19-34-51.png' height=333px></img>  
--=  
<img src='./img/2022-10-18-19-35-03.png' height=333px></img>  
--=  
<img src='./img/2022-10-18-19-34-39.png' height=333px></img>
推测执行

<img src='./img/2022-10-18-19-37-31.png' height=333px></img>  
分支预测，超标量处理器  
aaav

<img src='./img/2022-10-18-19-37-56.png' height=333px></img>  
一个 cpu 有多个 alu

<img src='./img/2022-10-18-19-39-34.png' height=333px></img>  
之前都是优化一个指令流的吞吐量，这里是同时运行多个指令流，即多核处理器

<img src='./img/2022-10-18-19-40-11.png' height=333px></img>  
多核的意思是 aaap，像是有多个 cpu，但因为它们紧密联系，可以共享一些资源，比如缓存，使得多核可以合作运算

<img src='./img/2022-10-18-19-42-26.png' height=333px></img>  
--=  
<img src='./img/2022-10-18-19-42-39.png' height=333px></img>  
aaap

<img src='./img/2022-10-18-19-43-06.png' height=333px></img>  
--=  
<img src='./img/2022-10-18-19-43-48.png' height=333px></img>  
aaap
