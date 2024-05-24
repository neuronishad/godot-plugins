extends Control

@export_category("Properties")
@export var BackgroundColor: Color = Color.WHITE
@export var ProgressBarBackground: StyleBox = StyleBoxFlat.new()
@export var ProgressBarFill: StyleBox = StyleBoxFlat.new()

var loading_screen = preload("loading_screen.tscn").instantiate(1)

func _ready():
	
	loading_screen.set_background(BackgroundColor)
	loading_screen.set_progressbar_background(ProgressBarBackground)
	loading_screen.set_progressbar_fill(ProgressBarFill)
	
	get_tree().root.add_child(loading_screen)
	print("loading scene added")	
	
	self.visible = false
	
	await start_loading()
	self.visible = true
	
	get_tree().root.remove_child(loading_screen)
	loading_screen.free()
	

func start_loading():
	# write data load logic
	await get_tree().create_timer(5).timeout
