extends Node

class_name HexUnitController

static var test_level = preload("res://scenes/level/test_level.tscn")
static var unit = preload("res://scripts/hex_units/HexUnitInput.gd")

static var test_level_instance = test_level.instantiate()
static var tilemaplayer = test_level_instance.get_node("TileMapLayer")

static func init():
	print("HexUnitController: иницилизирован")
	unit.set_tilemaplayer(tilemaplayer)
