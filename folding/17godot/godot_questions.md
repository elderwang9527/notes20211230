## 为什么 AnimationPlayer 给某个动画添了根节点 node2d rotation 90 度的帧，再把 rotation 重置为 0 。但在播放此动画后，根节点 node2d rotation 又恢复到了 90 度。

### 俯视游戏最好不用 r2d，都用 c2d。因为 r2d 主要作用是处理重力等，但不能自己编辑它的运动。(但官方文档又说 c2d 适合的是玩家控制的角色，所以目前还不能定论)

wen：can I know why I can't set the "rotation_degrees" permanently? I want to set it to 200, but eveny \_physics_process it will back to the default value 90.

da：You can't arbitrarily change orientation or velocity on a RigidBody2D. You can only interface to it with functions like apply_force and apply_torque (unless you do stuff inside \_integrate_forces, which gets even more complicated)

Yes, if you want to freely rotate it and control it by velocity. RigidBody2D is a full-physics simulation that tries to be as physically accurate as possible, so you can't do anything that causes instantaneous accelerations.

A：can I set the it in \_ready but not \_physics_process?：
you can set it in once in \_init

for a top-down sprite, there's no reason to not use CharacterBody2D
RigidBody2D is more for a platformer (gravity is automatically applied)

## AnimationPlayer 添加帧造成意外影响

### 回答似乎没理解问题，但有其它作用

wen：  
Can I know why after adding a track with a 90-degree rotation to the root node's Node2D in the AnimationPlayer and then resetting the rotation to 0, but the root node's Node2D rotation return to 90 degrees after playing the animation?

da：
You need to add another key frame with 0 degree rotation to the start. Using only one key frame creates a constant rather than a gradual change.  
你需要在开头添加另一个 0 度旋转的关键帧。只使用一个关键帧会导致恒定的变化，而不是渐变的变化。
