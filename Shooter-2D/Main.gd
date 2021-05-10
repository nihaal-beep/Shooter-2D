extends Node2D


signal gameover
var mob_scene = preload("res://mobs.tscn")

func _ready():
	randomize()
	
	
func start_game():

	$Player.show()
	get_tree().call_group("mobz","free")
	global.score=0
	$CanvasLayer.update_score(global.score)
	$StartTimer.start()
	$CanvasLayer.show_message("Get Ready...")
	yield($StartTimer, 'timeout')
	$MobTimer.start()
	

func _on_MobTimer_timeout():
	var mob_spawn_location = $MobPath/MobSpawnLoc
	mob_spawn_location.unit_offset = rand_range(0.0,0.5) 
	
	var mob= mob_scene.instance()
	add_child(mob)
	mob.position=mob_spawn_location.position
	
	
func game_over():
	get_tree().call_group("mobz","free")
	$Player.hide()
	$MobTimer.stop()
	
	$CanvasLayer.show_game_over()
	

func _on_EndZone_body_entered(_body):
	emit_signal ("gameover")
	



func _on_scoretimer_timeout():
	$CanvasLayer.update_score(global.score)
