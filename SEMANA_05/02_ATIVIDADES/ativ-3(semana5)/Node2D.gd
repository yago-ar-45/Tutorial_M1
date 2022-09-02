extends Node2D

var teste = false
var valor = 0
var numero = 0 # ERRO: variável numero não estava correta
var lista = []
var nome: String
onready var inventario = [[get_node("Inventario/Fruit1"),get_node("Inventario/Label1")],[get_node("Inventario/Fruit2"),get_node("Inventario/Label2")],[get_node("Inventario/Fruit3"),get_node("Inventario/Label3")]]

func _on_Button_pressed():
	# coletando dados inseridos pelo usuário
	numero = int($LineEdit2.text) # ERRO: faltou o "$"
	nome = str($LineEdit.text) #ERRO: faltou o argumento "str"


func _on_Button2_pressed():
#Incrementando o número inserido pelo usuário
	for i in range(10):
		numero+=i
		lista.append(numero)
		$Label2.text = str(numero) #ERRO: faltou o argumento "str"
	
func _on_Button3_pressed():
	#Mudando o nome do usuário de acordo com os dados da lista
	#Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	var cont = 0 # ERRO: tanto cont como "i" não estavam definidos 
	var i = 0
	while(len(lista) > i ): # ERRO: o loop estava infinito por causa da falta de operador 
		if(lista[i]%2==1):
			cont+=1
		i+=1
	if(cont!=0): # ERRO: esse if saiu do while para evitar a repetição do "baldo"
		nome = nome+"baldo"
		$Label2.text = nome
