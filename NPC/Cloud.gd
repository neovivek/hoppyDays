extends Node2D

var timeout = false

func _process(delta):
	if $Sprite/RayCast2D.is_colliding():
		fire()


func fire():
	if not timeout:
		timeout = true
		$Sprite/RayCast2D.add_child(load("res://NPC/Lightning.tscn").instance())
		$Sprite/Timer.start()


func _on_Timer_timeout():
	timeout = false
