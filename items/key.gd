class_name Key extends Area3D

signal player_entered(key: Key)
signal player_exited(key: Key)

@export var label: String
@export var id: String

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.rotate_y(delta)


func _on_area_entered(area: Area3D):
	if area.name == 'PlayerActionTrigger':
		var player: Player  = area.get_parent_node_3d() as Player
		player.key_entered(self)


func _on_area_exited(area):
	if area.name == 'PlayerActionTrigger':
		var player: Player  = area.get_parent_node_3d() as Player
		player.key_exited(self)
