### 列表循环时报错信息：Elements in iteration expect to have 'v-bind:key' directives

![](./img/2022-03-20-21-35-39.png)  
1、Vue 2.2.0+的版本里，当在组件中使用 v-for 时，key 是必须的。

我们可以更改 vetur 配置 ：vscode 文件->首选项->设置->搜索 vetur.validation.Template，将这一项去掉就可以了

![](./img/2022-03-20-21-36-21.png)  
2、我们在使用 v-for 的时候，在 v-for 后添加 v-bind:key="item"
