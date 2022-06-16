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

cmd d，垂直分屏，跟系统显示桌面快捷键冲突，取消掉系统快捷键。
