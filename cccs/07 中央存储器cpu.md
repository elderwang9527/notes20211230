## 221014

<img src='./img/2022-10-15-01-45-01.png' height=333px></img>  
中央处理单元，cpu，central processing unit

<img src='./img/2022-10-15-01-46-43.png' height=333px></img>  
--=  
<img src='./img/2022-10-15-01-46-56.png' height=333px></img>  
--=  
<img src='./img/2022-10-15-01-47-23.png' height=333px></img>  
--=  
<img src='./img/2022-10-15-01-47-35.png' height=333px></img>  
--=  
<img src='./img/2022-10-15-01-47-50.png' height=333px></img>  
cpu 执行的内容

## 221015

<img src='./img/2022-10-15-07-53-17.png' height=333px></img>  
一根线可能是很多线

## 221016

<img src='./img/2022-10-16-22-32-45.png' height=333px></img>  
--=  
<img src='./img/2022-10-16-22-34-08.png' height=333px></img>  
--=  
<img src='./img/2022-10-16-22-34-41.png' height=333px></img>  
aaap  
准备工作

<img src='./img/2022-10-16-22-36-18.png' height=333px></img>  
已经知道数据以二进制存在内存，程序也可以存在内存。可以给 cpu 支持的所有指令，分配一个 id。  
在此例中，用前 4 位做操作代码，operation code，opcode。后四位代表数据来自哪里，可以是地址或寄存器

<img src='./img/2022-10-16-23-26-50.png' height=333px></img>  
0209-0227  
还需要两个寄存器来完成 cpu  
一个是指定地址寄存器追踪程序运行到哪里了，存当前指令的内存地址；一个是指令寄存器，存当前指令  
计算机启动时，所有寄存器从 0 开始

<img src='./img/2022-10-16-23-30-16.png' height=333px></img>  
举例，在 ram 里放一个程序，试一下。  
cpu 第一阶段叫做 取指令阶段，负责拿到指令

<img src='./img/2022-10-16-23-50-07.png' height=333px></img>  
首先，将 指令地址寄存器 连到 ram  
寄存器的值为 0，因此 ram 返回地址 0 的值，如图红色  
所以 0010 1110 会复制到 指令寄存器 里  
总结，可以理解为指令地址寄存器从 ram 里拿到数据给指令寄存器

<img src='./img/2022-10-16-23-56-23.png' height=333px></img>  
--=  
<img src='./img/2022-10-16-23-56-53.png' height=333px></img>  
--=  
<img src='./img/2022-10-16-23-57-14.png' height=333px></img>  
--=  
<img src='./img/2022-10-16-23-58-15.png' height=333px></img>  
aaap  
解码阶段

<img src='./img/2022-10-17-00-00-37.png' height=333px></img>  
--=  
<img src='./img/2022-10-16-23-59-50.png' height=333px></img>  
控制单元也由逻辑门组成  
为了检查是不是 load a 指令，设计了如图电路

<img src='./img/2022-10-17-00-04-23.png' height=333px></img>  
ooov  
0340-0415  
dddi  
现在知道了是什么指令，就开始执行了，最终结果为把 ram 地址 14 的值，放到了寄存器 A 里。

<img src='./img/2022-10-17-00-10-32.png' height=333px></img>  
执行结束后，就可以做下一个指令了，关闭所有线路，然后指令地址寄存器加 1.

<img src='./img/2022-10-17-00-12-14.png' height=333px></img>  
--=  
<img src='./img/2022-10-17-00-12-33.png' height=333px></img>  
load a 只是个例子，还有很多其它的，可以继续抽象，把控制单元看作一个整体

<img src='./img/2022-10-17-00-20-51.png' height=333px></img>  
ooov  
0450-0543  
把控制单元做为整体讲了 取指令，解码，执行

<img src='./img/2022-10-17-00-27-20.png' height=333px></img>  
ooov  
0545-0720  
这段讲了 add 指令，引入了 alu 模块，较复杂 dddf

<img src='./img/2022-10-17-00-34-20.png' height=333px></img>  
ooov  
0720-0745  
这段讲了 store a 指令

<img src='./img/2022-10-17-00-36-55.png' height=333px></img>  
以上这几个执行其实已经是一个程序了

<img src='./img/2022-10-17-00-39-40.png' height=333px></img>  
ooov  
0935e  
取指令，解码，执行，其实是“时钟”管理 cpu 的节奏  
时钟以精确的间隔触发电信号，控制单元用这个信号，推进 cpu 的内部操作，像节拍器一样  
取指令，解码，执行的速度叫时钟速度，单位是赫兹。

<img src='./img/2022-10-17-00-45-32.png' height=333px></img>  
0957e  
超频是指修改时钟速度，加快 cpu 速度  
制造商给 cpu 的时钟有一定余地，所以可以接受一定程度的超频，但超太多会让 cpu 过热或乱码，因为信号跟不上时钟

<img src='./img/2022-10-17-00-48-55.png' height=333px></img>  
1021e  
也可以降频，这样能省电。很多芯片现在已经可以按需求动态调整时钟，即频率了。

<img src='./img/2022-10-17-00-50-42.png' height=333px></img>  
加入 clock，又抽象了一层

<img src='./img/2022-10-17-00-52-22.png' height=333px></img>  
cpu 和 ram 的联系
