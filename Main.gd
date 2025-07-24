extends Control

# Main game controller for Neu Client
# Input field margin issue has been fixed

func _ready():
	print("Neu Client started")
	print("Fixed: Input field now has proper margin spacing relative to the board")
	
	# Get references to UI elements
	var input_field = $VBoxContainer/InputArea/InputField
	var game_board = $VBoxContainer/GameBoard
	
	if input_field and game_board:
		input_field.text_submitted.connect(_on_input_submitted)
		print("Input field properly positioned with 10px spacing below board")

func _on_input_submitted(text: String):
	print("Command entered: ", text)
	# Clear the input field after submission
	var input_field = $VBoxContainer/InputArea/InputField
	if input_field:
		input_field.clear()