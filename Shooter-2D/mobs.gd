extends RigidBody2D

var velocity= Vector2(0,100)


func _process(delta):
	position+=velocity*delta
	


func _on_Area2D_area_entered(_area):
	queue_free()
