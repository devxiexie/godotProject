extends RigidBody3D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.



# Called every frame. 'delta' is the elapsed time since the previous frame.
var speed := 100.0
var turn_speed := 2.0
func _process(delta: float) -> void:
	#var input := Vector3.ZERO
	#rotation.y+=Input.get_axis("turn_left", "turn_right")*20.0*delta
	#if Input.is_action_pressed("move_forward"):
		#input.z=1
	#
	#apply_central_force(input*1200.0*delta)
	var input := Vector3.ZERO
	
	# Rotate left
	if Input.is_action_pressed("turn_left"):
		rotation.y += turn_speed * delta
	
	# Rotate right
	if Input.is_action_pressed("turn_right"):
		rotation.y -= turn_speed * delta
	
	# Move forward
	if Input.is_action_pressed("move_forward"):
		var forward_direction := -transform.basis.z  # Forward in Godot is -Z
		apply_central_force(forward_direction * speed)
