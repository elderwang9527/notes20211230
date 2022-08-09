uniapp 默认无法鼠标点选并复制文字，在 app.vue 中的 style 中输入

page {
-webkit-user-select: text;
}

即可点选并复制文字。

view 标签当作 div 使用，view 标签的常用属性：hover-class ，手指点击后所产生的效果，在 uni-app 中，不使用:horver
