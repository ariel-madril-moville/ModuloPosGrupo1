extends Node

@export var farolVerde = false 

signal farolFicouVerde
signal farolFicouVermelho
signal andarNaFaixa

func _ready():
	pass

func _process(delta):
	if(farolVerde):
		ficouVerde()
	else:
		ficarVermelho()
		andarPedestre()
	
		

func ficouVerde():
	farolFicouVerde.emit()
	

func ficarVermelho():
	farolFicouVermelho.emit()
	
func andarPedestre():
	andarNaFaixa.emit()


func _on_button_button_down():
	farolVerde = !farolVerde
