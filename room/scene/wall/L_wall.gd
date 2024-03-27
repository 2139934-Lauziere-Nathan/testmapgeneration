extends Node2D
@onready var x = $RigidBody2D
@onready var porte = $RigidBody2D/CollisionShape2D
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_2d_body_entered(body):
	porte.disabled = true
	#porte.hide()
	remove_child(x)
	
	pass # Replace with function body.

