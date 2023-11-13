extends CanvasLayer

signal star_game

func show_message(text):
	$Message.text = text
	$Message.show()
	$MessageTimer.start()
	
func show_game_over():ju
	show_message('Game Over')

	await $MessageTimer.timeout
	
	$Message.text = 'Dodge the\nCreeps!'
	$Message.show()
	
	await get_tree().create_timer(1.0).timeout
	$StartButton.show()
	
func _on_start_button_pressed():
	$StartButton.hide()
	start_game.emit()
	
func _on_message_timer_timeout():
	$Message.hide()
