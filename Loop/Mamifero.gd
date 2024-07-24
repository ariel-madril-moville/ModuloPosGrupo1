extends Node2D

class_name  Mamifero

@export var Velocidade : int = 2
@export var possoCorrer = false
		
func _process(delta):
	if(possoCorrer == true):
		position += Vector2(Velocidade, 0)

func Corre():
	possoCorrer = true

func Para():
	possoCorrer = false

func Correr():
	possoCorrer = true
	
func Pare():
	possoCorrer = false
