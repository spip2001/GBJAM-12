extends CanvasLayer

@onready var spriteA: Node2D = $SpriteA
@onready var spriteOpen: Node2D = $SpriteOpen
@onready var spriteUse: Node2D = $SpriteUse
@onready var spriteLook: Node2D = $SpriteLook
@onready var spriteTake: Node2D = $SpriteTake


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func hideAll():
	self.spriteA.visible = false
	self.spriteOpen.visible = false
	self.spriteUse.visible = false
	self.spriteLook.visible = false
	self.spriteTake.visible = false
	
func showOpen():
	self.hideAll()
	self.spriteA.visible = true
	self.spriteOpen.visible = true
	
func showUse():
	self.hideAll()
	self.spriteA.visible = true
	self.spriteUse.visible = true
	
func showLook():
	self.hideAll()
	self.spriteA.visible = true
	self.spriteLook.visible = true
	
func showTake():
	self.hideAll()
	self.spriteA.visible = true
	self.spriteTake.visible = true
