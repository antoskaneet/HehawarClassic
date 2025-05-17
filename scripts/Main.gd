extends Node

var HexUnitController = preload("res://scripts/hex_units/HexUnitController.gd")
var test_level_scene = preload("res://scenes/level/test_level.tscn")

var test_level_instance = test_level_scene.instantiate()

func _ready():
	HexUnitController.init()
	add_child(test_level_instance)
