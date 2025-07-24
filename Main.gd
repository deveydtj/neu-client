extends Control

# Main game controller for Neu Client
# Demonstrates the input field margin issue

func _ready():
	print("Neu Client started")
	print("Issue: Input field has excessive margin below the board")
	
	# Get references to UI elements
	var input_field = $VBoxContainer/InputArea/InputField
	var game_board = $VBoxContainer/GameBoard
	
	if input_field and game_board:
		input_field.text_submitted.connect(_on_input_submitted)
		print("Input field positioned with excessive spacing below board")

func _on_input_submitted(text: String):
	print("Command entered: ", text)
	# Clear the input field after submission
	var input_field = $VBoxContainer/InputArea/InputField
	if input_field:
		input_field.clear()