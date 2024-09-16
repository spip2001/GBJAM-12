extends Node2D

@onready var player: Player = $GBRender/SubViewport/Scene/Player
@onready var messageUI: MessageUI = $MessageUI


# Called when the node enters the scene tree for the first time.
func _ready():
	player.near_something.connect(_set_message)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _set_message(text: String):
	messageUI.set_text(text)
