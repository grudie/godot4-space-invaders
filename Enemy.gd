extends Area2D

var velocidade = 200
var salto = 70

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.x = position.x + velocidade * delta
	if position.x > 1024:
		position.x = position.x - 5
		velocidade = -velocidade
		position.y = position.y + salto
	elif position.x < 0:
		position.x = position.x + 5
		velocidade = -velocidade
		position.y = position.y + salto


func _on_enemy_area_entered(area):
	if is_instance_valid(area):
		area.queue_free()
	if is_instance_valid(self):
		queue_free()
