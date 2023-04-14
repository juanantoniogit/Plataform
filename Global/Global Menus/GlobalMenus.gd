extends Node

@onready var MenuPrin = preload("res://Menus/Menu Principal/MenuPrincipal.tscn").instantiate()


var Musica01
var Musica02
var Musica03

func _ready():
	print ("hola")
	$".".add_child(MenuPrin)
	$"Sonidos/Musica01".play()
	Global.vida = 3
	#musica(Musica01)
#	print (root_node."Global Menus")
#	print (get_tree().get_root().$"Global Menus".name)
#	print($"/root/GlobalMenus".name)

	pass
func musica(cancion):
	Musica01 = $Sonidos/Musica01.play()
	Musica02 = $Sonidos/Musica02.play()
	Musica03 = $Sonidos/Musica03.play()
	

		
