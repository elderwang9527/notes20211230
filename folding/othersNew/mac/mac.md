### m1 芯片开启系统工具的方法不是网上说的开机后按 cmd r，而是一直按开机键

### 触控板拖动窗口和选择文字 系统偏好设置-->辅助功能--->鼠标与触控板--->触控板选项 启用拖移 三指拖移（add，选不使用拖移锁定就类似 win10。）

### git 遇到网络迟缓或 timeout 报错

![](2022-06-09-10-19-44.png)  
https://www.csdn.net/tags/NtzaggxsMTM1MC1ibG9n.html  
https://www.ipaddress.com/  
mac 更新 hosts 命令：sudo killall -HUP mDNSResponder;say DNS cache has been flushed

### mac 使用 code 命令打开 VSCode

安装 code：打开 VSCode –> command+shift+p –> 输入 shell command –> 点击提示 Shell Command: Install ‘code’ command in PATH 运行

### 常用快捷键

commant tab：切换不同程序，但如程序已经最小化则无法切换。  
control command f：最大化，正常切换。（有些程序似乎无效果）。

cmd n：新建终端。  
cmd t：在当前终端新增一个页面。
cmd 上：访达中到上级目录。（可以访达，显示，分栏。则更方便）
cmd shift z: 恢复撤销。与 win10 里 ctrl y 一样。
cmd shift .: 访达中显示隐藏 隐藏文件。
cmd opt 左右键：不同 tab 左右切换。control tab 只能单方向切换。
cmd shift m: chrome 不同用户之间切换
cmd ·：据说能切换同一程序不同窗口，但在 chrome 实验无效。

opt shift h:中文输入法下切换中文标点,英文标点
add220912,以上方法部分标点无效,如下划线必须在英文模式输入,不然就是破折号。
可在键盘，文本，输入码中输入 xh，这样在 chrome 等地方英文输入 xh，就能空格选择下划线。但 vscode 不行，但可中文状态下输入 xh，数字选择下划线。

220930	
cmd ctrl 1 文件夹按名称排序
2 按类型排序
3 按时间排序

### mac 启动拖选

设置，辅助功能，鼠标与触控板，触控板选项，启用拖移。

### 触发角设置

![](img/pasteImage-2022-06-10-15-15-25.png)

### chrome 全屏时标签和地址栏消失

cmd shift f

### Iterm2 + zsh 安装教程

![](img/pasteImage-2022-06-11-14-36-36.png)
https://blog.csdn.net/Top_xiao/article/details/119790555

### 快捷键打开 iterm2 并进入指定目录实例。

automator.app，新建文稿，快速操作，运行 applescript。粘贴以下代码。cmd 保存，键盘，快捷键，服务，通用，点选并配置快捷键即可。

```
--此段代码有bug
tell application "iTerm"
	activate
end tell

tell application "System Events"
	tell process "Iterm"
		delay 0.2
		keystroke "cd Desktop/"
		key code 29
		key code 18
		keystroke "workspace"
		key code 36
	end tell
end tell
```

keystroke 里不能输入数字，用 key code 代替。
key code 列表。
https://eastmanreference.com/complete-list-of-applescript-key-codes

```
--使用这段代码
tell application "iTerm"
	reopen
	activate
	tell current window
		--create tab with default profile
		tell current session
			write text "cd ~/Desktop/01workspace"
		end tell
	end tell
end tell
```

### permission denied 错误

sudo chmod -R 777 某一目录
-R 是指级联应用到目录里的所有子目录和文件
777 是所有用户都拥有最高权限

### 剪切

cmd c，cmd option v

### esc 键失效，删除掉 ishot 截图程序
