extends Node2D

@onready var MenuWin = preload("res://Menus/Win/Win.tscn").instantiate()
@onready var SelecNivel = preload("res://Menus/Select Niveles/SelectNiveles.tscn").instantiate()
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
	#print("Nombre del nivel: " + str(Global.nivel))
#	pass


func _on_area_2d_body_entered(body):
	
	if (body.name == "personaje"):
		Global.pantalla +=1
		
		$"AudioWin".play()
		print($"AudioWin".finished) 
		
			#print("Nombre del nivel: " + str(Global.nivel))
			#if get_tree().get_nodes_in_group("Enemigo").size() == 0:
		if ($"AudioWin".finished):
			$".".queue_free()
		#		get_tree().get_root() # Access via scene main loop.
			get_parent().queue_free()
			if Global.nivel == "nivel1":
				Global.pantalla = 1
				get_node("/root/Global Menus").add_child(SelecNivel)
				get_node("/root/Global Menus/Sonidos/Musica01").play()
			if Global.nivel == "nivel2":
				Global.pantalla = 2
				get_node("/root/Global Menus").add_child(SelecNivel)
				get_node("/root/Global Menus/Sonidos/Musica01").play()
			if Global.nivel == "nivel3":
				Global.pantalla = 3
				get_node("/root/Global Menus").add_child(SelecNivel)
				get_node("/root/Global Menus/Sonidos/Musica01").play()
			if Global.nivel == "nivel4":
				Global.pantalla = 4
				get_node("/root/Global Menus").add_child(MenuWin)
				get_node("/root/Global Menus/Sonidos/Musica01").play()
		
	#print(Global.nivel)
#		if Global.nivel == "res://Ejecutable/Juego/Escenarios/Niveles/Nivel1/nivel1.tscn":
			
#		if Global.nivel == "res://Ejecutable/Juego/Escenarios/Niveles/Nivel2/nivel2.tscn":
#			Global.pantalla = 2
#		if Global.nivel == "res://Ejecutable/Juego/Escenarios/Niveles/Nivel3/nivel3.tscn":
#			Global.pantalla = 3
#		if Global.nivel == "res://Ejecutable/Juego/Escenarios/Niveles/Nivel4/nivel4.tscn":
#			Global.pantalla = 4
	pass 

