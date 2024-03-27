extends Node2D

var roomIDs = [1,2,3] 
# Called when the node enters the scene tree for the first time.
func _ready():
	var randomRoomID = roomIDs[randi() % roomIDs.size()]
	loadRoom(randomRoomID)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
func loadRoom(roomID):
	# Load the room scene based on the given ID
	var roomScene = load("res://map/rndsale/" + str(roomID) + ".tscn")
	
	# Instance the room scene
	var roomInstance = roomScene.instantiate()
	
	# Add the room instance to the scene tree
	add_child(roomInstance)
