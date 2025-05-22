extends Node

@onready var tilemaplayer = $TileMapLayer

func setup():
	assert(tilemaplayer != null)
	print("[LevelController] setup: карта готова")
