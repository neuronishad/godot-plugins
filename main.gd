extends Control

func _ready():
	get_tree().change_scene_to_file.call_deferred("res://Test.tscn")
