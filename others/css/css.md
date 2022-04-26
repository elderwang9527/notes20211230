## 背景图设置方式

background-size: cover 可能背景图片部分看不见  
background-size: contain 缩放背景图片以完全装入背景区，可能背景区部分空白。  
background-size: width-value,height-value; 分为固定大小和百分比和 auto，固定大小就是写死；auto 就是以背景图片的比例缩放背景图片。。  
background-size: 100%, 100%; 自动伸缩至容器大小

## 让 border 不占用 width

-webkit-box-sizing: border-box;
-moz-box-sizing: border-box;
box-sizing: border-box;

