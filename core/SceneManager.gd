class_name SceneManager

extends Node

var level_scene
var tree_instance

func set_level(level):
	level_scene = level
	
func set_tree(tree):
	tree_instance = tree
	
func switch_scene(instance: Node):
	var root = tree_instance.root
	for child in root.get_children():
		child.queue_free()
	root.add_child.call_deferred(instance)
