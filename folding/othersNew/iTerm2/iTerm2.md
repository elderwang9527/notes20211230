### iTerm2 ssh 免密登陆 vps。

![](./img/2022-06-15-15-24-30.png)  
https://zhuanlan.zhihu.com/p/180500618  
使用此方法会遇到密码中有$的问题，暂未解决  
add，也许能通过加转义符/来解决。

![](./img/2022-06-15-15-51-01.png)  
https://zhuanlan.zhihu.com/p/384827869  
最好使用此教程。  
ssh-copy-id -i ~/.ssh/id_rsa.pub root@192.168.56.200
需要先用 ssh -p 22 root@192.168.56.200登陆后的 vps 才能使用别名登陆

### iTerm2 设置主题(add，理解错误，此为设置颜色组。设置主题在～/.zshrc 里设置 ZSH_THEME="...")

https://iterm2colorschemes.com/ 选择主题，点击主题名获得新页面，将新页面所有内容保存着 aaa.itermcolors 文件里。进入 iterm，cmd i，colors，color presets，import。选择 aaa 文件。之后 aaa 文件会出现在 color presets 里，勾选即可。
add，以上方法只能临时设置，如需设置默认颜色组，还需在 general，profile 里 copy currenlt setting to select profile.

### iTerm2 快捷键

cmd d，垂直分屏，跟系统显示桌面快捷键冲突，所以使用 cmd shift d，水平分屏。  
cmd t，新建标签，同一个 window。但同时只能显示一个标签
cmd k, clear  
Option + Command + / 显示近期打开过的目录。

crl k, 或 esc D，删除当前光标右边所有。(add,crl k 全删，esc d，部分删)
crl w, 删除左边。
⌘ + ⌥ + B 按键回放。
sft cmd m, mark  
sft cmd j, to mark.

### 使用技巧

Smart Selection  
在 iTerm2 中，双击选中，三击选中整行，四击智能选中（智能规则可配置：https://iterm2.com/documentation-smart-selection.html），可以识别网址，引号引起的字符串，邮箱地址等。

### tmux integration

![](./img/2022-06-29-22-36-12.png)

### 安装 tmux，以及 tmux 不会中断任务原理。

https://zhuanlan.zhihu.com/p/106300185

![](./img/2022-06-29-22-39-44.png)  
add，screen 方式也有不会中断任务特性。暂时先用 screen。

### 访达界面打开 iterm2

顶部显示，显示路径栏（底部出现路径），路径右键，服务，new iterm2

### 回到之前时间段的 iterm 状态

![](./img/2022-07-03-09-24-48.png)  
cmd opt b

### 关掉 "command + /" find cursor

cmd / 和 pycharm 冲突，不能直接在 iterm 设置里关闭，需要在系统偏好，服务，iterm 里关闭。
