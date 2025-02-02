extends Node2D

onready var play = $MarginContainer/VBoxContainer/Play
onready var credits = $MarginContainer/VBoxContainer/Credits
onready var exit = $MarginContainer/VBoxContainer/Exit

# Called when the node enters the scene tree for the first time.
func _ready():
	exit.connect("pressed", self, "_on_exit_pressed")
	credits.connect("pressed", self, "_on_credits_pressed")
	play.connect("pressed", self, "_on_play_pressed")

func _on_play_pressed():
	get_tree().change_scene("res://first_scene.tscn")
	
func _on_exit_pressed():
	get_tree().quit()
	
func _on_credits_pressed():
	get_tree().change_scene("res://credits.tscn")

