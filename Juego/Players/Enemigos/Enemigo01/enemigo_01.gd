extends CharacterBody2D
var SelecNiveles = preload("res://Menus/Select Niveles/SelectNiveles.tscn").instantiate()


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


"""
signal bodyEnter

func _ready():
	$"CollisionShape2D".connect("ready",Callable(_on_collision()))

func _on_collision(body):
	if body.name=="personaje":
		print("Muerto")

"""


func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle Jump.
	"""
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY
"""
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = 0
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	if velocity == Vector2(0,0):
		$"AnimationPlayer".play("idle")

	move_and_slide()


func _on_area_2d_body_entered(body):
	if body.name=="personaje":
		Global.vida -=1
		print(Global.nivel)
		
		reiniciar()
		
		
	pass # Replace with function body.

func reiniciar():
	#Global.personaje = load(personaje).instantiate()
	#print(Global.personaje.name)
	Global.personaje.set_name("personaje")
	#Global.RutaPersonajeSelect = personaje
	#print(personaje)
	if Global.vida != 0:
		get_node("/root/Global Menus").add_child(SelecNiveles)
	pass
	#else:
	Global.Menu()
	#get_parent().get_parent().queue_free()
	
	
	"""
	partida = load(nivel).instantiate()
	Global.nivel = partida.get_name()
	
	
	Global.personaje = load(Global.RutaPersonajeSelect).instantiate()
	Global.personaje.set_name("personaje")
	partida.set_name("partida")
	partida.get_node("PosicionSalida1").add_child(Global.personaje)
	get_parent().get_parent().add_child(partida)
	#print (Global.personaje.get_path())
	get_parent().get_node("Sonidos/Musica01").stop()
	
	$".".queue_free()
	"""
	
	pass
	
