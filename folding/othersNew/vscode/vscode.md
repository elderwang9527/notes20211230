## vscode 预览 markdown，按 ctrl k 后放下 ctrl 再按 v。

## vscode 解决 windows 换行 crlf 与 lf 冲突 ^M 问题

https://blog.csdn.net/glorydx/article/details/110958739
一劳永逸的解决方法
如果你所有的同事都是使用 windows 系统，
vscode 点击文件 --》首选项 --》 设置 --》 搜索 eol，改变 eol 为\n(指 lf)或者改为(\r\n)，有一个统一的标准就好了。
git 在维护版本库的时候统一使用的是 LF，这样就可以保证文件跨平台的时候保持一致。
在 Linux 下默认的换行符也是 LF，那也就不存在什么问题。
在 Windows 下默认的换行符是 CRLF，那么我们需要保证在文件提交到版本库的时候文件的换行符是 LF，通常来说有两种方法：
如果你同事中有使用其它系统开发的
你需要先执行上面的操作，再行 以下代码才能解决
git config --global core.autocrlf false

---

## 避免 json 注释报错

![](./img/2022-02-02-01-04-00.png)

sol 文件里出现 import 报错，将 solidity 插件降到 0.0135。直接降可能失败，下载单独的文件，再将其拖入 vscode 的插件栏来安装。

VSCode 关闭右侧预览功能 缩略图  
关闭方法：点击文件-首选项-设置,搜索"editor.minimap.enabled",默认值为打钩,我们只需要把钩去掉即可；

---

## vscode 快捷键设置

切换侧边栏，默认为 ctrl b，换为 ctrl b 加 ctrl b （add，mac 里叫主侧栏）
切换活动栏，默认未设置，换位 ctrl b 加 ctrl v

add，关闭右侧缩略图，预览功能。设置，搜索 editor.minimap.enabled。取消勾选。

---

## 使用搜索功能时排除指定的文件或文件夹

![](./img/2022-02-19-19-24-52.png)

---

## 在指定位置查找指定内容

![](./img/2022-04-01-21-37-24.png)  
add，需要先输入内容，再框选指定区域，再点击此处。

## 设置用户代码片段，参照 markdown.md

## 切换中英文

ctrl shift p，display language

## vscode 显示/设置隐藏文件夹

设置里搜 exclude，修改对应后缀。

## 不同系统下找到 settings.json

You can change the settings.json from your user preferences. This changes are global. Therefore it will affect all of your projects. Here are 2 ways to reach that global settings.json file.

File -> Preferences -> Settings -> Extensions -> Scroll down and find "Edit in settings.json"
Or in these paths in your OS
Windows %APPDATA%\Code\User\settings.json
macOS $HOME/Library/Application Support/Code/User/settings.json
Linux $HOME/.config/Code/User/settings.json

https://supunkavinda.blog/vscode-editing-settings-json

## 搜索文件名而不是搜索文件里的内容，cmd p，ctrl p。cmd shift p 则是搜索命令。

## 批量替换空格，需开启正则表达式

![](./img/2022-07-11-13-14-38.png)

## 无鼠标 mac vscode，cmd option 上下可批量增加光标

## 不回退代码，但让代码自动更新到跟以前某次提交完全一样，即可以保留中间所有的提交。

各种方法似乎都有问题，最好是复制当前的代码到另一个文件夹，并将该文件夹回退到指定版本，再用该文件夹到文件复制到原文件夹，但.git 不复制，最后再原文件夹新增提交即可。
