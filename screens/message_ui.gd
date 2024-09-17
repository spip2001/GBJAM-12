class_name  MessageUI extends CanvasLayer

@onready var label: Label = $messageLabel
@onready var bottomPanel: PanelContainer = $BottomPanel
@onready var message: Label = $BottomPanel/Text

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func set_text(text: String):
	label.text = text

func clear_text():
	label.text = ''
	
func set_message(text: String):
	bottomPanel.visible = true
	message.text = text

func hide_message():
	bottomPanel.visible = false
	message.text = ''
	
	
