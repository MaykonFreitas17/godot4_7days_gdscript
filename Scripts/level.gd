# Herdando do objeto Node2D
extends Node2D

# _ready é chamada quando o objeto do script estiver pronto,
# assim como os seus filhos.
# Ela é executada apenas uma vez.
func _ready():
	# a função print mostra uma mensagem no console do editor
	print("Hello, World!")
	print("Adna Léticia, Você é a garota mais Linda do Mundo!")
	
	variables()
	
	
func variables():
	# sintaxes de uma variavel
	# var nome_variavel = valor_variavel
	var _name = "Adna Léticia"
	var count = 0

	# Operadores de atribuição
	# = -> Atribui a valor a uma variavel
	# += -> aumenta um valor de um valor atual
	# -= -> diminui um valor de um valor atual
	
	count += 1
	print(count)
	
	count -= 1
	print(count)


func type_of_variables() -> void:
	# tipo String
	# tipagem em váriaveis: var nome_variavel: tipo = valor
	var _type_string: String = "Isso é uma String"
	var _name_of_lover: String = "Adna Léticia"
	

func object_methods():
	pass
