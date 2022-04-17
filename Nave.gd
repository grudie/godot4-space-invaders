extends Sprite2D

var velocidade = 400
var fire_left
var fire_right
var laser_res = load("res://Laser.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	fire_left = $FireLeft
	fire_right = $FireRight
	
	fire_left.visible = false
	fire_right.visible = false
	print("A nave está pronta.")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed('ui_left'):
		fire_right.visible = true
		position.x = position.x - velocidade * delta	
	else:
		fire_right.visible = false
		
	if Input.is_action_pressed('ui_right'):
		fire_left.visible = true
		position.x = position.x + velocidade * delta	
	else:
		fire_left.visible = false
	
	if Input.is_action_just_pressed('ui_select'):
		var laser = laser_res.instantiate()
		get_tree().current_scene.add_child(laser)
		laser.position = position + Vector2(0, -20)
		laser.em_movimento = true
