class_name Initializer

extends Node

var SceneManager = preload("res://core/SceneManager.gd")
var LevelController = preload("res://scripts/level/LevelController.gd")
var level_scene = preload("res://scenes/level/test_level.tscn")
var UnitInput = preload("res://scripts/hex_units/HexUnitInput.gd")
var unit_input = UnitInput.new()
var level_scene_instance = level_scene.instantiate()
var scene_manager = SceneManager.new()
var level_controller = LevelController.new()

var tilemaplayer
var tree_instance

func init():
	print("print")
	scene_manager.set_tree(tree_instance)
	scene_manager.switch_scene(level_scene_instance)
	
	tilemaplayer = level_scene_instance.get_node("TileMapLayer")
	UnitInput.set_tilemaplayer.call_deferred(tilemaplayer)
	
func set_tree(tree):
	tree_instance = tree
