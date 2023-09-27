## 230926

## 0125 写 player 的血量代码。此时代码多了一段 @onready var hurtColor = $Sprite2D/ColorRect ，但视频并没有说到

## 0217 让玩家血量小于 0 时恢复到最大血量

## 0511 做血量槽，用 hboxcontainer，命名为 heartsContainer 它会自动让其子节点以水平排序。再做一个 pannel 加心形的 sprite2d 做 heartGui

## 0622 将 heartGui 设置为 heartsContainer 的子节点，并再复制两个，再设置下间距

## 0733 将血量显示到游戏中的操作。world 中新建 canvaslayer，这可以让 heart 永远显示在游戏最上层，并跟随 camera 一起移动，即相对屏幕边界位置永远不变。
