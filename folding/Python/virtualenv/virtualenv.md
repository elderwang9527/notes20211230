## 230525，vps ubuntu anaconda 环境中安装可能会遇到警告：WARNING: Running pip as the 'root' user can result in broken permissions and conflicting behaviour with the system package manager. It is recommended to use a virtual environment instead: https://pip.pypa.io/warnings/venv

先暂时不用管，因为是警告不是报错，用 venv 的话，又要考虑很多问题。所以以后如必须再考虑用 venv。

```
这个警告是新版本的pip工具在你以root用户运行它时发出的。这样做可能导致权限问题，以及与系统包管理器的冲突。

首先，如果你以root用户身份安装Python包，这些包可能会被安装在系统级别的位置，例如/usr/lib/python3.8/site-packages。这可能会干扰系统包管理器对这些位置的管理，并可能导致系统级别的Python环境变得混乱。

其次，运行pip作为root用户还可能导致权限问题。例如，安装的包可能无法被非root用户访问，或者在安装过程中可能改变已有文件和目录的所有权。

为了避免这些问题，pip推荐使用虚拟环境。虚拟环境是Python的一项功能，允许你为每个项目创建一个隔离的环境，这样你就可以在这个环境中安装不同的包，而不会影响系统级别的Python环境或其他项目的环境。这个链接https://pip.pypa.io/warnings/venv提供了关于如何使用虚拟环境的更多信息。
```
