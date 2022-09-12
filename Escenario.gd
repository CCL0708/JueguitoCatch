extends Node2D

var comidant = preload ("res://HelicopteroRojo.tscn")
var comida = preload("res://Mosca.tscn")
var t = rand_range(0.5, 2)
var t2 = rand_range(1, 2)

func _ready():
	$Timer.start(t)
	$Timer2.start(t2)



func _on_Timer_timeout():
	var screen = get_viewport_rect().size
	var position = Vector2(rand_range(0, screen.x), -350)
	
	var comida = load("res://Mosca.tscn")
	comida = comida.instance()
	
	comida.position = position 
	
	add_child(comida)


func _on_Timer2_timeout():
	var screen = get_viewport_rect().size
	var position = Vector2(rand_range(0, screen.x), -350)
	
	var comidant = load("res://HelicopteroRojo.tscn")
	comidant = comidant.instance()
	
	comidant.position = position 
	
	add_child(comidant)
	
func _process(delta):
	$nomnoms.text = "Puntaje: " + str(Globales.nomnom)
	$nomnomsnts.text = "Vida: " + str(Globales.vida)
	if Globales.vida < 1:
		get_tree().change_scene("res://Derrota.tscn")
		
