### 打开 PowerShell 时，提示 “无法加载文件，因为在此系统上禁止运行脚本” 的错误

https://www.cnblogs.com/ingram03/p/13765679.html
![](./img/2022-01-08-16-15-06.png)
以管理员身份运行 PowerShell
执行：get-ExecutionPolicy.查看 PowerShell 脚本运行权限政策
执行：set-ExecutionPolicy RemoteSigned 即可

### 为 powershell/cmd 设置代理

设置代理
netsh winhttp set proxy 127.0.0.1:1080 （具体端口查看下图）
取消代理
netsh winhttp reset proxy
查看代理
netsh winhttp show proxy

![](./img/2022-01-15-16-31-19.png)
