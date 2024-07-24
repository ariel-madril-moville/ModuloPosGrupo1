extends Node2D


class_name Moto
@export var Velocidade = 2
@export var PossoSeguir = false

func _process(delta):
	if(PossoSeguir):
		position += Vector2(Velocidade, 0)
		

func _on_sinal_farol_ficou_verde():
	PossoSeguir = true


func _on_sinal_farol_ficou_vermelho():
	PossoSeguir = false
