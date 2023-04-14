extends Control

@onready var MenPrincipal = preload("res://Menus/Menu Principal/MenuPrincipal.tscn").instantiate()




func _on_Button_pressed():
	get_node("/root/Global Menus").add_child(MenPrincipal)
	$"Button/AudioStreamPlayer".play()
	get_parent().queue_free()
	print(get_parent().get_parent().name)
	
	pass # replace with function body
