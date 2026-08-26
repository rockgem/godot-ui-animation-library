extends Node
class_name AnimationScale

var t: Tween

@export var size: float = 1.1

func _ready() -> void:
	await get_tree().physics_frame
	
	var control_parent: Control = get_parent()
	control_parent.offset_transform_enabled = true
	
	control_parent.mouse_entered.connect(func():
		if t:
			t.kill()
		
		t = create_tween()
		t.tween_property(control_parent, 'offset_transform_scale', Vector2(size, size), .1)
		)
	
	control_parent.mouse_exited.connect(func():
		if t:
			t.kill()
		
		t = create_tween()
		t.tween_property(control_parent, 'offset_transform_scale', Vector2.ONE, .1)
		)
