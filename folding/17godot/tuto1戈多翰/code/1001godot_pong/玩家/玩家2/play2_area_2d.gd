extends Area2D


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	for i in get_overlapping_areas():
		if i.is_in_group("Ball"):
			i.vec.x=-5
	print()
	var y1 = Input.get_action_strength("玩家2上")*5
	var y2 = Input.get_action_strength("玩家2下")*5
	var y3 = position.y-y1+y2
	if y3>16:
		if y3<630:
			position.y=position.y-y1+y2
