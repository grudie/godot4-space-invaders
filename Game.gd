extends Node2D

var points = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	$Enemy.connect('area_entered', incrementa_pontuacao)
	$Enemy2.connect('area_entered', incrementa_pontuacao)
	$Enemy3.connect('area_entered', incrementa_pontuacao)
	$Enemy4.connect('area_entered', incrementa_pontuacao)
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func incrementa_pontuacao(area):
	points = points + 10
	$Score.text = 'Score: ' + str(points)
