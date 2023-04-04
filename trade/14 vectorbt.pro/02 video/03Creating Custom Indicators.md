## 230317

<img src='./img/2023-03-17-20-40-20.png' height=333px></img>  
vbt 中，参数不仅可以设置成标量 scalar，还可以设置成矢量？ vector（即可以选择多个参数）这样方便最佳化参数，会在之后的课程里讲，这节课程主讲 create indicators

### 3458-3541 作者说它喜欢 vbt 的一点，但没听懂啥意思

<img src='./img/2023-03-17-21-26-09.png' height=333px></img>  
--=  
<img src='./img/2023-03-17-21-25-34.png' height=333px></img>
准备工作

<img src='./img/2023-03-17-21-35-32.png' height=333px></img>  
--=  
<img src='./img/2023-03-17-21-36-03.png' height=333px></img>  
自制 indicator 实例。注意 res.value 是因为之前将 output_names 设置为了 value

<img src='./img/2023-03-17-22-08-35.png' height=333px></img>  
--=  
<img src='./img/2023-03-17-22-09-17.png' height=333px></img>  
--=  
<img src='./img/2023-03-17-22-10-16.png' height=333px></img>  
写了一个 trend 的 indicator，注意最后 print 加 to_string 是因为不加的话会有省略号省略很多信息。

<img src='./img/2023-03-17-22-20-28.png' height=333px></img>  
--=  
<img src='./img/2023-03-17-22-21-03.png' height=333px></img>  
1，close 可以是多个的，形式如图 2  
2，这里又换了个 indicator 的写法

<img src='./img/2023-03-17-22-27-56.png' height=333px></img>  
--=  
<img src='./img/2023-03-17-22-27-21.png' height=333px></img>  
将 entries 和 exits 赋上值，就能回测出结果了。

<img src='./img/2023-03-17-22-40-11.png' height=333px></img>  
1，让所有东西都保留为 pandas 格式，而不是转换为 nparray  
2，打印结果，是 pandas

<img src='./img/2023-03-17-22-43-10.png' height=333px></img>  
--=  
<img src='./img/2023-03-17-22-42-46.png' height=333px></img>  
保留为 pandas 格式后就可以 resample 了

<img src='./img/2023-03-17-23-20-34.png' height=333px></img>  
--=  
<img src='./img/2023-03-17-23-19-28.png' height=333px></img>  
--=  
<img src='./img/2023-03-17-23-12-21.png' height=333px></img>  
又重新 down sample 为一分钟，大概是这样才能对比，具体原理看视频。

<img src='./img/2023-03-17-23-24-34.png' height=333px></img>  
--=  
<img src='./img/2023-03-17-23-23-23.png' height=333px></img>  
ffill nan 值，才好对比  
总结大概是将原本 5 分钟内的 bar 数值都变为相同，这样虽然最后仍然是一分钟对一分钟对对比，但结果就等于 5 分钟对 bar 跟 1 分钟对 bar 对比了。

<img src='./img/2023-03-17-23-30-55.png' height=333px></img>  
011046  
大概是两者行数不同，使用此方法让他们行数相同，一一对应

<img src='./img/2023-03-17-23-33-51.png' height=333px></img>  
--=  
<img src='./img/2023-03-17-23-42-44.png' height=333px></img>  
--=  
<img src='./img/2023-03-17-23-43-12.png' height=333px></img>  
1，转换为 nparray，也可以不转换，直接用 pd。  
2，最终代码  
3，结果如图 


