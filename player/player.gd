class_name Player extends CharacterBody3D

signal near_something(msg: String)

const SPEED = 4.0

var keys = []

# Key pick 
var current_key_in_area: Key = null 

func _process(delta):
	
	# What is near player ?
	if current_key_in_area:
		near_something.emit(current_key_in_area.label)
	else:
		near_something.emit("")
		
	if Input.is_action_just_pressed("a"):
		print('A')

func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	## Handle jump.
	#if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		#velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var input_dir = Input.get_vector("left", "right", "up", "down")
	
	# Handle rotation
	self.rotate_y(-input_dir.x * PI * delta)
	
	# Handle walk
	var direction = Vector3.ZERO
	if input_dir.y:
		direction.z = input_dir.y
		direction = (self.global_transform * direction) - (self.global_transform * Vector3.ZERO)
		
	if direction.z:
		velocity = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.z = move_toward(velocity.z, 0, SPEED)

	move_and_slide()
	
func key_entered(key: Key):
	current_key_in_area = key

func key_exited(key: Key):
	current_key_in_area = null
