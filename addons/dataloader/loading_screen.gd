extends Control

func _ready():
	var Progress = $Background/MarginContainer/ProgressBar
	
	var tween = get_tree().create_tween()
	tween.tween_property(Progress, "value", 100, 4).as_relative()

func set_background(color: Color):
	var Background = $Background
	Background.color = color

func set_progressbar_background(bg: StyleBox):
	var Progress = $Background/MarginContainer/ProgressBar
	Progress.add_theme_stylebox_override("background", bg)

func set_progressbar_fill(fill: StyleBox):
	var Progress = $Background/MarginContainer/ProgressBar
	Progress.add_theme_stylebox_override("fill", fill)
