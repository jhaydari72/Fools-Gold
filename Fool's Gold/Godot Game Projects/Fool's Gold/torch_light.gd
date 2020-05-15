extends Light2D
var torch_light = false
func _ready():
	hide()

func _input (event):
	if torch_light == false:
		if Input.is_action_just_pressed("ui_enter"):
			torch_light = true
			show()
	elif torch_light == true:
		if Input.is_action_just_pressed("ui_enter"):
			torch_light = false
			hide()
