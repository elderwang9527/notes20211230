## linux，mac，win 很多终端命令都是通用的，所以将终端命令相关笔记存在这里

## find

![](./img/2022-09-28-10-53-15.png)  
--=  
![](./img/2022-09-28-10-53-41.png)  
--=  
![](./img/2022-09-28-11-09-40.png)  
实例 find ./ -name 'target' -ok rm -rf {} \;  
注意截图有错，{} \; 之间有空格  
add
需要输入 y 并回车，只回车无效

## sed 命令实例

<img src='./img/2022-10-03-20-33-42.png' height=333px></img>

```
sed -i '' -e 's/hello/nihao/g' -e 's/world/shijie/g' *.md

```

mac 系统需加''，用于备份文件扩展名，不需要时留空
