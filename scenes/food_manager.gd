extends Node2D

const FLARKEY = preload("res://scenes/flarkey.tscn")
var flarkey

# Called when the node enters the scene tree for the first time.
func _ready():
	flarkey = FLARKEY.instantiate()
	flarkey.was_clicked.connect(_on_flarkey_was_clicked)

func _on_flarkey_was_clicked():
	print_debug("flarkey was clicked")

#func _process(_delta):
	#if Input.is_action_just_pressed("debug"):
