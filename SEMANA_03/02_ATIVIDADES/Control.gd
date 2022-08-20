extends Control

var lista = [1, 2, 3, 4]
var lista2 = []


func _ready():
	$Button2.connect("pressed", self, "adicionar")
	$Button.connect("pressed", self, "mostrar")
	$Button3.connect("pressed", self, "mostra_tela")
	$Button4.connect("pressed", self, "escreve_tela")
	
func mostrar():
	$Label2.text = str(lista)
	
func adicionar():
	lista2.append($TextEdit.text)
	$TextEdit.text= ""
	$Label4.text = str(lista2)
	
func mostra_tela():
	$Label6.text="Aqui está o texto na tela"
	
func escreve_tela():
	$Label8.text = $TextEdit2.text
	$TextEdit2.text = ""

