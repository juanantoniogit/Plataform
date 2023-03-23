extends Node

@onready var MenuPrin = preload("res://Menus/Menu Principal/MenuPrincipal.tscn").instantiate()



func _ready():
	print ("hopla")
	$".".add_child(MenuPrin)
	$"Musica Menus".play()
#	print (root_node."Global Menus")
#	print (get_tree().get_root().$"Global Menus".name)
#	print($"/root/GlobalMenus".name)

	pass
