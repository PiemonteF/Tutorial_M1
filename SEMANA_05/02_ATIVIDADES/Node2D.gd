extends Node2D


var teste = false
var valor = 0
#variável estava com acento
var numero = 0
var lista = []
var nome
onready var inventario = [[get_node("Inventario/Fruit1"),get_node("Inventario/Label1")],[get_node("Inventario/Fruit2"),get_node("Inventario/Label2")],[get_node("Inventario/Fruit3"),get_node("Inventario/Label3")]]

func _on_Button_pressed():
	#Coletando dados inseridos pelo usuário
	numero = int($LineEdit.text)#estava com o acento
	$LineEdit.text = nome


func _on_Button2_pressed():
	#Incrementando o número inserido pelo usuário
	for i in range(10):
		numero+=i #variavel instanciada com letra minúscula e escrita com letra maiuscula aqui
		lista.append(numero)#Numero com letra maiuscula errado
	$Label.text = numero


func _on_Button3_pressed():
	#Mudando o nome do usuário de acordo com os dados da lista
	#Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	#mudei para um for, mais simples e faz o mesmo objetivo, tirando a necessidade de um contador cont
	for i in range(len(lista)):
		if(lista[i]%2==1):
			nome = nome+"baldo"
			$Label2.text = nome
