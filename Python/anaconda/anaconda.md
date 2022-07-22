## conda 安装 binance(以及其它非主流依赖)，且安装到指定编译器分支

![](./img/2022-07-22-19-38-57.png)  
https://stackoverflow.com/questions/70957311/how-can-i-install-python-binance-package-in-pycahrm-i-am-using-the-conda-inter  
一些非主流依赖直接 conda install 不行，需现在这里搜索：https://anaconda.org/search?q=python-binance，知道来自conda-forge包，所以conda install -c conda-forge python-binance 或如 conda install -c rodgomesc pip-ccxt

## pycharm 新环境选择 base 分支

在 anaconda，envirment 中移到 base 处，显示其路径/opt/anaconda3。  
pycharm 新环境中 location 选择 /opt/anaconda3/bin/python3  
conda excute 默认选择 /opt/anaconda3/bin/conda
