@tool
extends EditorPlugin


func _enter_tree():
	add_custom_type("DataLoader", "Control", preload("data_loader.gd"), preload("icon.svg"))


func _exit_tree():
	remove_custom_type("DataLoader")
