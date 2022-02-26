### 设置全局用户名和密码

git config --global user.name "username"  
git config --global user.email "email"

### 全局 git 设置默认文件地址

C:\Users\username\.gitconfig

### 设置本地用户名和密码

git config user.name "username"  
git config user.email "email"

### 本地 git 设置默认文件地址

/.git/config

### 合并 add commit push 命令

git config --global alias.aaa '!f() { git add -A . && git commit -m "$@" && git push origin main; }; f'

楼上提到了 git revert。其实，git reset --hard 和 git revert 都可以实现“回滚代码”。但区别在于：

git revert 会把你的本地变成 A -> B -> C -> D -> E。其中，E 干的事儿是删除 C 和 D。这样做的好处在于，你 git push origin master 就不会有上面的报错了。但，历史线上还是会保留 C 和 D 这两个 commit。如果使用这个命令，记得要 add 然后 commit。

git reset --hard 会直接删掉 C 和 D，形成 A -> B 这样的结果。好处在于更直接更彻底。缺点在于，首先要通过 git push origin master --force 去强行更改。其次，一旦你后悔了，除非根据本地的 reflog 直接恢复 HEAD 指针，此外没有其他办法。

### 分支相关

git checkout -b new-branch 创建并进入 new-branch  
git add git commit 和正常提交一样  
git push origin new-branch 提交到 github。
git checkout main 返回 main 分支
git branch -d new-branch 删除 new-branch 分支 (未 merge 的分支 -d 需写为-D)

###

想回到某次提交 git reset --hard \*\*\*  
但再提交到 github 需要增加 -f 参数，且 github 上会丢失掉该次提交以后的提交。

### 删掉增加但还未提交的文件和修改，即还原得跟上次提交一模一样。

git checkout head . 修改被还原  
git clean -nfd 查看即将被删除的文件  
git clean -fd 增加的文件被删除

### 为一台电脑配置多个 GitHub 账号

https://zhuanlan.zhihu.com/p/423007454      
注意可能会以为此教程有笔误，但其实就是要那样写，没有笔误

![](./img/2022-02-27-02-42-54.png)
