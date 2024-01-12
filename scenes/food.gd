extends Node2D

@onready var sprite_2d: Sprite2D = $Sprite2D
@onready var clickable: StaticBody2D = $Clickable

signal was_clicked

func _on_clickable_got_clicked():
	was_clicked.emit()
