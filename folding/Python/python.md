## 221207

### 数组相关

arr.sort()从小到大排序，注意并不是结果排序，而是使用此命令后 arr 本身自动排序  
arr.sort(reverse=True) 大到小排序

pop 按 index 移除数组元素  
remove 按值移除元素，未测试

## 230110

### ubuntu 升级 python3

<img src='./img/2023-01-10-09-06-15.png' height=333px></img>  
https://www.jianshu.com/p/e6850152e69a  
暂未测试是否有 bug  
但也可直接 ubunt22 而不是 ubunt20，22 自带 python3 为 3.10，20 为 3.6

### list 需要深拷贝，方法：import copy，ori_num_list = copy.deepcopy(num_list)

### 打印变量类型

name = "lili"
print(type(name))
