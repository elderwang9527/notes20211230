<img src='./img/2022-05-13-10-47-08.png' height=333px></img>      
gas 优化的原始方法。  
  
<img src='./img/2022-05-13-10-47-59.png' height=333px></img>      
这里可以看到 gas 消耗  
  
<img src='./img/2022-05-13-10-48-36.png' height=333px></img>      
memory 变成 calldata，节约 gas。  
  
<img src='./img/2022-05-13-10-49-32.png' height=333px></img>      
循环中的状态变量变为局部变量，节约。  
  
<img src='./img/2022-05-13-10-51-19.png' height=333px></img>      
<img src='./img/2022-05-13-10-52-12.png' height=333px></img>      
短路，将布尔值判断和 if 合并。  
  
<img src='./img/2022-05-13-10-52-52.png' height=333px></img>      
 i++ 换成 ++i；  
  
<img src='./img/2022-05-13-10-54-02.png' height=333px></img>      
循环长度存储为局部变量  
  
<img src='./img/2022-05-13-10-56-43.png' height=333px></img>      
<img src='./img/2022-05-13-10-58-12.png' height=333px></img>          
数组元素提前拷贝到内存变量中。就不用多次读取数组下标为 i 的数组元素了。  
