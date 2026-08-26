extends Node
class_name AnimationShake

var t: Tween

@export var shake_strength: float = .02
@export var speed: float = .05


func _ready() -> void:
	await get_tree().physics_frame
	
	var control_parent: Control = get_parent()
	control_parent.offset_transform_enabled = true
	control_parent.mouse_entered.connect(func():
		if t:
			t.kill()
		
		t = create_tween()
		t.tween_property(control_parent, 'offset_transform_rotation', shake_strength, speed)
		t.tween_property(control_parent, 'offset_transform_rotation', 0.0, speed)
		t.tween_property(control_parent, 'offset_transform_rotation', -shake_strength, speed)
		t.tween_property(control_parent, 'offset_transform_rotation', 0.0, speed)
		)
