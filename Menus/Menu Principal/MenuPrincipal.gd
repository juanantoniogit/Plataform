extends Node

var Creditos = preload("res://Menus/Creditos/Creditos.tscn").instantiate()
var Jugar = preload("res://Menus/Select Personaje/SelectPersonaje.tscn").instantiate()

func _ready():
	$VBoxContainer.set_position(Vector2(get_viewport().size.x/4 , get_viewport().size.y/4))
	

	pass

func _on_Creditos_pressed():
	get_node("/root/Global Menus").add_child(Creditos)
	get_parent().get_node("Sonidos/boton01").play()
	$".".queue_free()
	pass 

func _on_Jugar_pressed():
	get_node("/root/Global Menus").add_child(Jugar)
	get_parent().get_node("Sonidos/boton01").play()
	$".".queue_free()
	pass 


func _on_Salir_pressed():
	get_tree().quit()
	get_parent().get_node("Sonidos/boton01").play()
	pass # replace with function body
