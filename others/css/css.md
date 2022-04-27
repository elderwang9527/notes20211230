## 背景图设置方式

background-size: cover 可能背景图片部分看不见  
background-size: contain 缩放背景图片以完全装入背景区，可能背景区部分空白。  
background-size: width-value,height-value; 分为固定大小和百分比和 auto，固定大小就是写死；auto 就是以背景图片的比例缩放背景图片。。  
background-size: 100%, 100%; 自动伸缩至容器大小

## 让 border 不占用 width

-webkit-box-sizing: border-box;
-moz-box-sizing: border-box;
box-sizing: border-box;

## 理解前端尺寸 vw、vh、rem、em

https://zhuanlan.zhihu.com/p/96721026

em 代表字体比例，相对于父元素；rem 类似，但只相对于根元素 html。最好用 rem。

vw（Viewport Width）、vh(Viewport Height)是基于视图窗口的单位，是 css3 的一部分，基于视图窗口的单位，除了 vw、vh 还有 vmin、vmax。

vw:1vw 等于视口宽度的 1%        
Vh:1vh 等于视口高度的 1%        
vmin: 选取 vw 和 vh 中最小的那个,即在手机竖屏时，1vmin=1vw      
vmax:选取 vw 和 vh 中最大的那个 ,即在手机竖屏时，1vmax=1vh      
