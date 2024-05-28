extends Node

var loading_screen = preload("loading_screen.tscn").instantiate(1)

func load_data(node: Node, _load_data: Callable):
	node.add_child(loading_screen)
	node.visible = false
	await _load_data.call()
	node.visible = true
	node.remove_child(loading_screen)
	loading_screen.free()
	
