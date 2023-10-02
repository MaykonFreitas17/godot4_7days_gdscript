# Herdando do objeto Node2D
extends Node2D

# Referenciando objetos da cena por código
@onready var player: Sprite2D = get_node("Player")
@onready var enemy: Sprite2D = get_node("Enemy_01")

# @export
@export var my_name: String # Exibe no editor, podendo ser editado fora do código

# Contantes
const CURRENT_LEVEL: int = 2 # Valor não pode ser alterado/não muda

# _ready é chamada quando o objeto do script estiver pronto,
# assim como os seus filhos.
# Ela é executada apenas uma vez.
func _ready():
	# a função print mostra uma mensagem no console do editor
	print("Hello, World!")
	print("Adna Léticia, Você é a garota mais Linda do Mundo!")
	
	# Trabalhando com o objeto referenciado
	print(player.name)
	print(enemy.name)
	
	
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
	
	# Formatação de Texto
	print("Olá, meu nome é " + my_name)

func interger_number() -> void:
	# whole numbers (Números inteiros)
	var exemplo1: int = 1
	var exemplo2: float = 1.5
	print(exemplo1)
	print(exemplo2)

func type_of_variables() -> void:
	# tipo String
	# tipagem em váriaveis: var nome_variavel: tipo = valor
	var _type_string: String = "Isso é uma String"
	var _name_of_lover: String = "Adna Léticia"
	
func object_methods():
	pass

func boolean_variables():
	var is_alive: bool = true
	var attacking: bool = false
	
	print(is_alive) # true
	print(attacking) # false
	print(not is_alive) # inverte => false
	print(!attacking) # inverte => true

func exercise_session_03() -> void:
	# informações
	var _name: String = "Maykon Freitas"
	var _age: int = 21
	var _my_goals: String = "Eu pretendo aprender o máximo possivel de GDscript e Godot, para poder fazer vários projetos nessa engine que tanto me chama a atenção!"
	
	# exibição
	print("Meu Nome é " + _name)
	print("Eu tenho " + str(_age) + " anos de idade")
	print(_my_goals)

func conditional_structure() -> void:
	# Estrutura Condicional: if/elif/else
	var _age: int = 18

	if _age > 18:
		print("É maior de idade")
	elif _age == 18:
		print("Tem 18 anos")
	else:
		print("É menor de idade")
		
	# operadores: and, or, not
	
	# Exercicio 01
	var _number: int = 11
	if _number > 0 and _number <= 10:
		print("Número entre 1 e 10")
		
	
	# Estrutura Condicional: Match/Case
	var player_class: String = "Warrior 2"
	match player_class:
		"Warrior":
			print("Itens: Espada lvl 2 | Escudo lvl 1")
		
		"Mage":
			print("Itens: Cajado lvl 4 | Livro de Conjuração lvl 5")
		
		# Caso padrão (caso não atenda nenhuma condição)
		_:
			print("Classe Indefinida")

func arrays_list() -> void:
	var list: Array = ["Maykon", 21, 1.68] # exemplo de arrays
	print(list)
	
	# Acessando um elemento especifico
	print(list[0])
	print(list[1])
	print(list[2])
	
	# metodos de arrays
	print(len(list)) # tamanho do array - quantidade de elementos
	print(list.size()) # tamanho do array - quantidade de elementos
	print(list.has(21)) # verifica se existe o valor dentro do array e retorna um booleano
	print(list.find("Maykon")) # Procura um elemento na lista e retorna o seu indice | retorna -1 se não achar nada
	
func repetition_structure() -> void:
	var list: Array = [1, 2, 3, 4]
	
	# Estrutura de repetidção for
	for n in list:
		if n == 3:
			continue # o CONTINUE vai fazer com que o loop ignore a iteração atual e pule para a próxima
			
		if n >= 4:
			print(n)
			break # o BREAK vai fazer com que o loop pare na iteração atual e ignore as próxima
	
	# Iterando pelo indece dos elementos da lista
	for n in list.size():
		print(n)
		
	# Usando o range
	for i in range(10, 25):
		print(i)

func manipulating_scene_groups() -> void:
	print(get_tree().get_nodes_in_group("Player"))
	print(get_tree().get_nodes_in_group("Enemies"))
	
	# Iterando sobre a lista de objetos dos grupos
	for player in get_tree().get_nodes_in_group("Player"):
		print(player.name)
	
	for enemy in get_tree().get_nodes_in_group("Enemies"):
		print(enemy.name)


















