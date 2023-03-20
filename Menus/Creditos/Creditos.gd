extends Node

@onready var MenuPrin = preload("res://Menus/Menu Principal/MenuPrincipal.tscn").instantiate()

func _on_menu_principal_pressed():
	get_node("/root/Global Menus").add_child(MenuPrin)
	get_parent().get_node("boton").play()
	$".".queue_free()
	pass



