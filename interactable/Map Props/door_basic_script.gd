extends Node3D

@export var load_next_level_when_openned = false
@export var level_file_path = "none"
@export var locked = false

var selected = false

func _input(event):
	if Input.is_action_just_pressed("interact") and selected and not locked:
		$anim.play("open")
		if load_next_level_when_openned:
			Worker.load_path = level_file_path
			get_tree().call_group("Player", "level_finish")
	if Input.is_action_just_pressed("interact") and selected and locked:
		$anim.play("locked")

func _on_collision_area_entered(area):
	selected = true

func _on_collision_area_exited(area):
	selected = false
