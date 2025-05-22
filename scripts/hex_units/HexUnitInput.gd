extends Area2D

@export var movement_script: Node

static var rec_tilemaplayer
var radius = 1

static func set_tilemaplayer(tilemaplayer):
	rec_tilemaplayer = tilemaplayer
	
func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			print("клик")
			var mouse_position = get_global_mouse_position()
			var tile_coords = rec_tilemaplayer.local_to_map(mouse_position)
			var result = movement_script.get_hexes_in_radius(tile_coords, radius, rec_tilemaplayer)
			print(result)
