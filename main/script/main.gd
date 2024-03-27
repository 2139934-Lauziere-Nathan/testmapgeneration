extends Node2D

 
# Called when the node enters the scene tree for the first time.
func _ready():
	var newlv = load("res://map/structure_niveau/croix.tscn").instantiate()
	add_child(newlv)
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
