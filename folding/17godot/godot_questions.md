## 为什么 AnimationPlayer 给某个动画添了根节点 node2d rotation 90 度的帧，再把 rotation 重置为 0 。但在播放此动画后，根节点 node2d rotation 又恢复到了 90 度。

## can I know why I can't set the "rotation_degrees" permanently? I want to set it to 200, but eveny \_physics_process it will back to the default value 90.

You can't arbitrarily change orientation or velocity on a RigidBody2D. You can only interface to it with functions like apply_force and apply_torque (unless you do stuff inside \_integrate_forces, which gets even more complicated)

Yes, if you want to freely rotate it and control it by velocity. RigidBody2D is a full-physics simulation that tries to be as physically accurate as possible, so you can't do anything that causes instantaneous accelerations.

A：can I set the it in \_ready but not \_physics_process?：
you can set it in once in \_init

for a top-down sprite, there's no reason to not use CharacterBody2D
RigidBody2D is more for a platformer (gravity is automatically applied)
