extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	for i in range (0,$".".get_child_count()):
		$".".get_child(i).position = Vector2(get_viewport().size.x/(-2.1),get_viewport().size.y/(-(2.1+i*0.11)))
	pass



func _process(delta):
	#print(get_viewport_size())
	#$"AspectRatioContainer".position=
	pass
