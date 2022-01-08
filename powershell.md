### 打开PowerShell时，提示 “无法加载文件，因为在此系统上禁止运行脚本” 的错误
https://www.cnblogs.com/ingram03/p/13765679.html
![](./img/2022-01-08-16-15-06.png)
以管理员身份运行PowerShell
执行：get-ExecutionPolicy.查看PowerShell脚本运行权限政策
执行：set-ExecutionPolicy RemoteSigned即可