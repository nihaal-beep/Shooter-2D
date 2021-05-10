extends CanvasLayer

signal start_game
var button 
func update_score(score):
	$Score.text = str(score)

func show_message(text):
	$Label.text=text
	$Label.show()
	$Timer.start()

func show_game_over():
	
	show_message("GAME OVER")
	yield($Timer,"timeout")
	$Label.text="SPACE SHOOTER"
	$Label.show()
	yield(get_tree().create_timer(1.0),'timeout')
	$Button.show()

func _on_Button_pressed():
	$Button.hide()
	emit_signal('start_game')


	


func _on_Timer_timeout():
	$Label.hide()
