extends Control

@onready var Progress = $Background/MarginContainer/ProgressBar

# Called when the node enters the scene tree for the first time.
func _ready():
	var tween = get_tree().create_tween()
	tween.tween_property(Progress, "value", 100, 2).as_relative()
