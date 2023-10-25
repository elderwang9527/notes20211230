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

### 回答似乎没理解问题，但有其它作用。add，另有回答说是要设置 RESET 动画中的 rotation 为 0，暂未测试

wen：  
Can I know why after adding a track with a 90-degree rotation to the root node's Node2D in the AnimationPlayer and then resetting the rotation to 0, but the root node's Node2D rotation return to 90 degrees after playing the animation?

da：
You need to add another key frame with 0 degree rotation to the start. Using only one key frame creates a constant rather than a gradual change.  
你需要在开头添加另一个 0 度旋转的关键帧。只使用一个关键帧会导致恒定的变化，而不是渐变的变化。

## length()可求速度绝对值

## 镜面反弹方法

```
func _physics_process(delta):
	var prev_velocity = velocity
	updateAnimation()

	var collided = move_and_slide()
	if collided:
		handle_collision(prev_velocity)
	else:
		pass
```

```
func handle_collision(prev_velocity: Vector2):
#	var col = get_last_slide_collision()
#	var collider = col.get_collider()
#	velocity = -1*prev_velocity
#   get_last_slide_collision().get_normal()得到法线/normal-line，orthogonal方法从法线变为镜面线
	var mirror_line = get_last_slide_collision().get_normal().orthogonal()
	velocity = prev_velocity.reflect(mirror_line)
```

## 为什么有时 CollisionShape2D 外面要套一层 area2d

### 大概 area2d 的作用是监控碰撞模型的进出。而光是 collision 模型的话则只处理碰撞。所以要监控进出就要在 collision 模型外套一层 area2d

A region of 2D space that detects other CollisionObject2Ds entering or exiting it.

Area2D is a region of 2D space defined by one or multiple CollisionShape2D or CollisionPolygon2D child nodes. It detects when other CollisionObject2Ds enter or exit it, and it also keeps track of which collision objects haven't exited it yet (i.e. which one are overlapping it).

This node can also locally alter or override physics parameters (gravity, damping) and route audio to custom audio buses.

## godot 中的 user:// 目录实际上是在哪里？

```
在 Godot 游戏引擎中，user:// 目录实际上是指向用户特定数据的一个虚拟路径。这个目录位于用户的主目录下，具体位置取决于操作系统。下面是不同操作系统上 user:// 目录的实际位置：

Windows:
user:// 目录通常位于用户的文档目录下的 "Godot" 子目录中。例如：C:\Users\<YourUsername>\Documents\Godot\

macOS:
在 macOS 上，user:// 目录通常位于用户的 ~（主目录）下的 "Library/Application Support/Godot/" 目录中。例如：/Users/<YourUsername>/Library/Application Support/Godot/
add，finder好像不能找到，在终端：cd /Users/accountName/Library/Application Support/Godot/app_userdata 中找到，也有看不到存储文件的情况，但实际使用没问题的情况

Linux:
在 Linux 系统上，user:// 目录通常位于用户的主目录下的 .godot 子目录中。例如：/home/<YourUsername>/.godot/

在这个目录中，你可以保存和读取用户特定的游戏数据，例如配置文件、存档、日志等。user:// 是一个方便的方式，它允许你跨不同操作系统访问用户数据，而不必担心确切的文件路径。通过使用 user://，你可以确保你的游戏在不同平台上都能够找到用户数据。

```
