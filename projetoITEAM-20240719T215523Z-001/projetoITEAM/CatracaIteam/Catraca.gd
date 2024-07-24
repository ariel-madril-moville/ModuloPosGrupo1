extends Node2D

var button_pressed = 0  # Contador de cliques

func _ready():
	$Sprite1.modulate = Color(0.5, 0.5, 0.5)  # Definindo cor cinza
	$Button.pressed.connect(_on_Button_pressed)  # Conectando usando a nova sintaxe

func _on_Button_pressed():
	button_pressed += 1
	if button_pressed == 1:
		$Sprite1.modulate = Color(0, 1, 0)  # Verde
	elif button_pressed == 2:
		$Sprite1.modulate = Color(1, 0, 0)  # Vermelho
	elif button_pressed == 3:
		$Sprite1.modulate = Color(0.5, 0.5, 0.5)  # Cinza
		$Sprite1.hide()
	elif button_pressed == 4:
		$Sprite1.show()
		button_pressed = 0  # Reseta o contador para permitir repetição
