### 列表循环时报错信息：Elements in iteration expect to have 'v-bind:key' directives

![](./img/2022-03-20-21-35-39.png)  
1、Vue 2.2.0+的版本里，当在组件中使用 v-for 时，key 是必须的。

我们可以更改 vetur 配置 ：vscode 文件->首选项->设置->搜索 vetur.validation.Template，将这一项去掉就可以了

![](./img/2022-03-20-21-36-21.png)  
2、我们在使用 v-for 的时候，在 v-for 后添加 v-bind:key="item"  
![](./img/2022-05-04-15-21-30.png)  
(add,新增更好的写法，其中还加入了自动生成的 style)

---

### vue 刷新页面的方法

![](./img/2022-03-21-14-32-20.png)  
https://www.cnblogs.com/yinn/p/9056731.html  
注意，还需要在 app.vue 的 data 中设置 isRouterAlive

![](./img/2022-03-21-14-33-55.png)  
![](./img/2022-03-21-14-34-42.png)
此外，如果是 dapp，由于存在延迟，还需设置一个定时器，参考教程https://www.cnblogs.com/qwer123dsada/p/14636050.html

---

### v-for 循环获取 index

https://www.jianshu.com/p/4005aeea0ea1  
注意三个地方都写 index，而不是不写或者写 this.index

---

### computed 计算属性极简实例

![](./img/2022-03-22-11-31-54.png)  
https://www.cnblogs.com/chaixiaozhi/p/8688820.html

---

### for 循环给某数据赋值时可能前端无法显示，则先用 for 循环给另一个值赋值，结束后再用另一个值赋给需要的值，前端就能正常显示了

## ![](./img/2022-03-26-15-10-44.png)

---

### 如何给 v-for 循环出来的元素设置不同的样式(未证实是否可用)

![](./img/2022-03-26-15-22-35.png)
https://blog.csdn.net/wwf1225/article/details/90603139

---

### VUE 或者 js 动态设置 css 的属性值

![](./img/2022-03-29-22-46-52.png)  
只需动态设置 value 就能动态设置 css，关键 `${}`方法
