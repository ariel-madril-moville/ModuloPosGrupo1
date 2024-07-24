extends Node


@export var farolVerde = false

signal farolFicouVerde
signal farolFicouVermelho

func _ready():
	pass

func _process(delta):
	if(farolVerde):
		ficarVerde()
	else:
		ficarVermelho()
		
func ficarVerde():
	farolFicouVerde.emit()
	pass

func ficarVermelho():
	farolFicouVermelho.emit()
	pass
	


func BotaoApertado():
	farolVerde = !farolVerde
