extends Node

var operacao = ""
var number1 = 0
var number2 = 0 

func _ready():
	print(calcula(8, 4, "-"))
	
func calcula(number1, number2, operacao):
	var resultado = 0
	
	if operacao == "+":
		resultado = number1 + number2
	if operacao == "-":
		resultado = number1 - number2
	if operacao == "*":
		resultado = number1 * number2
	if operacao == "/":
			resultado = number1 / number2
					
	return resultado
		
		
		
	
	

