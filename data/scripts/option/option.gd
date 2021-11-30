extends CanvasLayer


var paused = false

func _ready():
	pass # Replace with function body.


func _physics_process(delta):
	var just_paused = Input.is_action_just_pressed("ui_cancel")
	if just_paused:
		paused = not paused		
		self.get_child(0).visible = paused
		if not paused:
			Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
		else:
			Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
