extends Area2D

var vec:Vector2=Vector2(5,5)
var init_position

# Called when the node enters the scene tree for the first time.
func _ready():
	self.add_to_group("Ball")
	# 每次初始化时，记录初始位置
	init_position=position
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position=position+vec
	
func  reset():
	if vec.x>0:
		CountScore.score1=CountScore.score1+1
	else:
		CountScore.score2=CountScore.score2+1
	position=init_position
