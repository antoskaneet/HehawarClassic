extends Node

var Initilaizer = preload("res://core/Initializer.gd")
var initilaizer_instance = Initilaizer.new()

var tree

func _ready():
	tree = get_tree()
	initilaizer_instance.set_tree(tree)
	initilaizer_instance.init()
	
