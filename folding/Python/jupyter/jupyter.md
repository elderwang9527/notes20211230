## python 数据分析神器 Jupyter notebook 快速入门 https://www.bilibili.com/video/BV1Q4411H7fJ

基于代码区块，可以和文档混写，查看中间变量，调用魔法函数等优点。对于数据分析等是最好的 ide。

内核为 ipython，所以显示 In []

![](./img/2022-07-19-18-18-17.png)  
绿色模式，编辑模式。 shift enter 运行当前代码。 按 esc 到命令模式
还有蓝色模式，命令模式，按 x 剪切命令，z 恢复命令。 按回车到编辑模式。  
在左侧按 m 还能进入 markdown 模式。  
按 h 可以看到所有快捷键。  
选中？，按 b 在当前代码块下方创建代码块，  
a，在当前代码块上方创建代码块  
ctl enter 只运行当前代码块。  
clt enter（opt enter）运行当前并跳到下一个。  
d，删除掉当前代码块  
shift v，粘贴到上方  
v，粘贴到当前。  
l 给代码标行数。  
c，复制。

## Jupyter 使用详解 https://zhuanlan.zhihu.com/p/441668517

便捷获取配置文件所在路径的命令：jupyter notebook --generate-config

修改默认启动文件夹：code /Users/accountname/.jupyter/jupyter_notebook_config.py，然后 c.NotebookApp.notebook_dir = '' 引号里输入路径。

## 清空输出

内核，重启&&清空输出

## jupyter 使用 anaconda 指定环境流程

有很多种途径，但是只有以下途径未遇到 bug
conda create -n test37 python=3.7  
anconda 桌面 home install jupyter，并从桌面 launch jupyter  
之后依赖从桌面安装，如安装不成功则从 jupyter 页面里 pip install 安装 或类似 pip install --upgrade dateparser==1.1.1 更新

## How To Set Up a JupyterLab Environment on Ubuntu 22.04

<img src='./img/2022-11-10-15-50-40.png' height=333px></img>

https://www.vultr.com/docs/how-to-set-up-a-jupyterlab-environment-on-ubuntu-22-04/

看起来很复杂，但可以省去申请域名，设置密码等步骤，所以做到步骤 5 就行了  
但是需要创建一个非 root 等 sudo 账户，教程记在了 vps.md 中

add221111  
注意下次登录时可能会登陆到 root 账户。需要 cat /etc/passwd 找到 jupyter 的用户名，再用此用户名登陆才能正常使用。

## 关闭 jupyter warning

```

在 jupyter 第一个 cell 单独加入
import warnings
warnings.filterwarnings('ignore')
warnings.simplefilter('ignore')

```

## vscode 自动格式化 jupyter-notebook ipynb 文件

```
As Kyle Carow stated in their answer to Ian Huff: Formatting of notebooks is available by now.

MacOS: Option+Shift+F
Windows: Alt+Shift+F
Pressing these keys will either trigger a formatting of the active cell or the notebook as a whole if no cell is active.
```

但似乎只能解决空行过多的简单问题，缩进错误等问题无法解决

## vscode 中选择 jupyter notebook 内核

打开一个 ipynb 文件，右上角笔记本形状图表选择

ssh -i "/Users/accountname/Desktop/01workspace/keys/aws-mumbai-keypair.pem" ubuntu@ec2-13-233-124-187.ap-south-1.compute.amazonaws.com
