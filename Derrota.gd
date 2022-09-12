extends Node2D


func _ready():
	Globales.vida = 3
	Globales.nomnom -= Globales.nomnom

func _on_Button_pressed():
	
	get_tree().change_scene("res://Escenario.tscn") # Replace with function body.
