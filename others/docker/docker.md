## win10 上彻底删除 docker：https://www.pythonsky.cn/technical-talk/477.html

![](./img/2022-01-08-16-12-33.png)
![](./img/2022-01-08-16-12-48.png)

```
 $ErrorActionPreference = "SilentlyContinue"

    kill -force -processname 'Docker for Windows', com.docker.db, vpnkit, com.docker.proxy, com.docker.9pdb, moby-diag-dl, dockerd

    try {
        ./MobyLinux.ps1 -Destroy
    } Catch {}

    $service = Get-WmiObject -Class Win32_Service -Filter "Name='com.docker.service'"
    if ($service) { $service.StopService() }
    if ($service) { $service.Delete() }
    Start-Sleep -s 5
    Remove-Item -Recurse -Force "~/AppData/Local/Docker"
    Remove-Item -Recurse -Force "~/AppData/Roaming/Docker"
    if (Test-Path "C:\ProgramData\Docker") { takeown.exe /F "C:\ProgramData\Docker" /R /A /D Y }
    if (Test-Path "C:\ProgramData\Docker") { icacls "C:\ProgramData\Docker\" /T /C /grant Administrators:F }
    Remove-Item -Recurse -Force "C:\ProgramData\Docker"
    Remove-Item -Recurse -Force "C:\Program Files\Docker"
    Remove-Item -Recurse -Force "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Docker"
    Remove-Item -Force "C:\Users\Public\Desktop\Docker for Windows.lnk"
    Get-ChildItem HKLM:\software\microsoft\windows\currentversion\uninstall | % {Get-ItemProperty $_.PSPath}  | ? { $_.DisplayName -eq "Docker" } | Remove-Item -Recurse -Force
    Get-ChildItem HKLM:\software\classes\installer\products | % {Get-ItemProperty $_.pspath} | ? { $_.ProductName -eq "Docker" } | Remove-Item -Recurse -Force
    Get-Item 'HKLM:\software\Docker Inc.' | Remove-Item -Recurse -Force
    Get-ItemProperty HKCU:\software\microsoft\windows\currentversion\Run -name "Docker for Windows" | Remove-Item -Recurse -Force
    #Get-ItemProperty HKCU:\software\microsoft\windows\currentversion\UFH\SHC | ForEach-Object {Get-ItemProperty $_.PSPath} | Where-Object { $_.ToString().Contains("Docker for Windows.exe") } | Remove-Item -Recurse -Force $_.PSPath
    #Get-ItemProperty HKCU:\software\microsoft\windows\currentversion\UFH\SHC | Where-Object { $(Get-ItemPropertyValue $_) -Contains "Docker" }
```

## docker、docker-compose、docker swarm 和 k8s 的区别

![](./img/2022-04-17-16-28-27.png)  
https://www.jianshu.com/p/2a9ae69c337d

## ubuntu 安装 docker-compose，docker engine

https://docs.docker.com/compose/install/ 提示安装 docker-compose 时要先安装 docekr engine，所以找到此教程 https://docs.docker.com/engine/install/ubuntu/

先 sudo apt-get remove docker docker-engine docker.io containerd runc 删掉可能安装的旧版本

然后 Set up the repository https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository (注意 Install Docker Engine 这一节只做第一步就已经完成安装 docker engine，之后再根据https://docs.docker.com/compose/install/ 即可安装 docker-compose)
