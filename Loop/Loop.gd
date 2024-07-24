extends Node


var arrayVelecidade = [0.4, 0.2, 1]
@onready var arrayDeCavalo = [$Cavalo1,$Cavalo2, $Cavalo3]
@export var farol = false

func _process(delta):
	
	AtualizaOsCavalo()
	
func AtualizaOsCavalo():
	if(farol):
		for i in arrayDeCavalo.size():
			arrayDeCavalo[i].position += Vector2(arrayVelecidade[i], 0)
	
func BotaoLigado():
	
	farol = !farol
	
