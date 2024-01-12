extends Sprite2D
class_name HoverOutline

const OUTLINE = preload("res://assets/materials/outline_material.tres")

func enable_outline():
	material = OUTLINE

func disable_outline():
	material = null
