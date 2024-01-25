@tool
extends Node2D
class_name Utensil

@onready var sprite_2d: Sprite2D = $Sprite2D
@onready var clickable: StaticBody2D = $Clickable

var outlined = false

signal was_selected
signal was_unselected

##region warnings
#func _get_configuration_warnings():
	#var warning = []
	#if not sprite_2d: 
		#warning.append("Missing Sprite2D child (Remember to attach hover_outline.gd)")
	#if not clickable:
		#warning.append("Utensils are required to have a Clickable child")
	#return warning
#
#func _notification(what):
	#if what == NOTIFICATION_CHILD_ORDER_CHANGED:
		#var found_sprite = false
		#var found_clickable = false
		#for child in get_children():
			#if child is HoverOutline:
				#sprite_2d = child
				#found_sprite = true
			#elif child.name == "Clickable":
				#clickable = child
				#found_clickable = true
		#if not found_sprite:
			#sprite_2d = null
		#if not found_clickable:
			#clickable = null
		#update_configuration_warnings()
##endregion

func _on_clickable_got_clicked():
	if not outlined:
		make_selected()
		was_selected.emit()
	else:
		make_unselected()
		was_unselected.emit()
		
func make_selected():
	sprite_2d.enable_outline()
	outlined = true
	
func make_unselected():
	sprite_2d.disable_outline()
	outlined = false
