extends Node2D

@onready var glooptar = $Glooptar
@onready var zorb = $Zorb
@onready var quantisipper = $Quantisipper

var currentlySelected = null

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func update_currently_selected(node):
	if currentlySelected != node:
		if currentlySelected:
			currentlySelected.make_unselected()
		currentlySelected = node

func _on_glooptar_was_selected():
	update_currently_selected(glooptar)

func _on_glooptar_was_unselected():
	currentlySelected = null

func _on_zorb_was_selected():
	update_currently_selected(zorb)

func _on_zorb_was_unselected():
	currentlySelected = null

func _on_quantisipper_was_selected():
	update_currently_selected(quantisipper)

func _on_quantisipper_was_unselected():
	currentlySelected = null
