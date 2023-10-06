## 231005

## 0155 1，虽然 slime 已经有了一个 hitbox，但还是给它增加另一个 area2d/hurtbox，以使它更容易被攻击。2，再设置其 area enter func，但目前只打断点做测试。但打开游戏后就立马退出，查看记录发现是跟自己的 hitbox 碰撞了。

<img src='./img/2023-10-05-09-25-35.png' height=333px></img>
--=  
<img src='./img/2023-10-05-09-26-34.png' height=333px></img>

## 0233 修改排除 hitbox 后，仍然立马退出(但自己跟着做并没有立马退出)。为解决这个问题，这次不检查这个 func 的 cases，而是使用 colli 的 layers 和 mask，来让任务更简单。

<img src='./img/2023-10-05-10-28-14.png' height=333px></img>

## 0310 新增 sword 的碰撞 layer3，hitBoxes。现在可以把所有 hitbox 放在这层，然后 hurtbox 可以扫描这一层，且忽略其它的。

<img src='./img/2023-10-05-10-40-58.png' height=333px></img>

## 0325 将 sword 的 layer 设置为 3/hitBoxes，mask 全取消。

## 0350 将 slime 的 hurtbox 的 layer 全取消，mask 设置为 3。

## 0400 每次 hurtbox 触发一次碰撞都打印出信息

<img src='./img/2023-10-05-16-35-08.png' height=333px></img>


