extends Control

# Referenciando o Label
@onready var display_text: Label = get_node('Background/Display/Label')

# Called when the node enters the scene tree for the first time.
func _ready():
	# Iniciando o texto do Label
	display_text.text = '0'

	for button in get_tree().get_nodes_in_group("button"):
		# Conectando todos os botões a uma função
		# button.connect('pressed', Callable(self, '_on_button_pressed'))
		# print(button)
		
		# Conectando os botões a função e passando parametro para a função
		button.pressed.connect(_on_button_pressed.bind(button.name))
		
func _on_button_pressed(name: String) -> void:
	# Printando o nome do botão que foi precionado
	if name != 'div' and name != '=' and name != '+' and name != '-' and name != '*':
		if name == 'Reset':
			display_text.text = '0'
		else:
			if display_text.text != '0':
				display_text.text += name
			else:
				display_text.text = name;
	else:
		if name == '=':
			var result = '10'
			display_text.text = result
		else:
			if display_text.text != '0':
				if name == 'div':
					display_text.text += '/'
				else:
					display_text.text += name
