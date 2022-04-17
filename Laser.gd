extends Area2D

var velocidade = 400
var em_movimento = false

# Called when the node enters the scene tree for the first time.
func _ready():
	$FxLaser.play()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if em_movimento:
		position.y = position.y - velocidade * delta
		if position.y < -100:
			queue_free()
