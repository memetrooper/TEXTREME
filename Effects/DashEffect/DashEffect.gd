extends Node2D

func _ready():
	$LeftSpark.emitting = true
	$RightSpark.emitting = true

func on_setup_done():
	var parent := (get_parent() as Effect)
	var effect_scale = parent.font.get_height() / 12.0
	$LeftSpark.position = parent.position_before
	$LeftSpark.position.y -= parent.font.get_height() / 2
	$RightSpark.position = parent.positions[0]
	$RightSpark.position.y -= parent.font.get_height() / 2
	$LeftSpark.scale = Vector2(1, 1) * effect_scale
	$RightSpark.scale = Vector2(1, 1) * effect_scale
