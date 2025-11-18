extends Node

var default_offset := 8.0
var default_speed := 0.3


func get_node_center(node: Control) -> float:
	return (get_viewport().get_visible_rect().size.x / 2) - (node.size.x / 2)


func animate_slide_from_left(node: Control, offset := default_offset, speed := default_speed) -> Signal:
	node.position.x = - node.size.x
	
	var t = create_tween()
	t.tween_property(node, 'position:x', offset, speed).set_trans(Tween.TRANS_BACK).set_ease(Tween.EASE_OUT)
	
	return t.finished


func animate_slide_to_left(node: Control, offset := default_offset, speed := default_speed) -> Signal:
	var t = create_tween()
	t.tween_property(node, 'position:x', -node.size.x, speed).set_trans(Tween.TRANS_BACK).set_ease(Tween.EASE_IN)
	
	return t.finished


func animate_slide_from_right(node: Control, offset := default_offset, speed := default_speed) -> Signal:
	node.position.x = get_viewport().size.x
	
	var vp_size = get_viewport().get_visible_rect().size.x
	
	var t = create_tween()
	t.tween_property(node, 'position:x', (vp_size - node.size.x) - offset, speed).set_trans(Tween.TRANS_BACK).set_ease(Tween.EASE_OUT)
	
	return t.finished


func animate_slide_to_right(node: Control, offset := default_offset, speed := default_speed) -> Signal:
	var t = create_tween()
	t.tween_property(node, 'position:x', get_viewport().size.x, speed).set_trans(Tween.TRANS_BACK).set_ease(Tween.EASE_IN)
	
	return t.finished


func animate_pop(node: Control) -> Signal:
	node.pivot_offset.x = node.size.x / 2
	node.pivot_offset.y = node.size.y / 2
	node.scale = Vector2.ZERO
	
	var t = create_tween()
	t.tween_property(node, 'scale', Vector2.ONE, default_speed).set_trans(Tween.TRANS_BACK).set_ease(Tween.EASE_OUT)
	
	return t.finished


func animate_shrink(node: Control) -> Signal:
	node.pivot_offset.x = node.size.x / 2
	node.pivot_offset.y = node.size.y / 2

	var t = create_tween()
	t.tween_property(node, 'scale', Vector2.ZERO, default_speed).set_trans(Tween.TRANS_BACK).set_ease(Tween.EASE_IN)
	
	return t.finished


func animate_from_left_to_center(node) -> Signal:
	node.position.x = - node.size.x
	
	var t = create_tween()
	t.tween_property(node, 'position:x', get_node_center(node), default_speed).set_trans(Tween.TRANS_BACK).set_ease(Tween.EASE_OUT)
	
	return t.finished


func animate_from_center_to_left(node: Control) -> Signal:
	var t = create_tween()
	t.tween_property(node, 'position:x', -node.size.x, default_speed).set_trans(Tween.TRANS_BACK).set_ease(Tween.EASE_IN)
	
	return t.finished


func animate_from_right_to_center(node: Control) -> Signal:
	node.position.x = get_viewport().get_visible_rect().size.x
	
	var t = create_tween()
	t.tween_property(node, 'position:x', get_node_center(node), default_speed).set_trans(Tween.TRANS_BACK).set_ease(Tween.EASE_OUT)
	
	return t.finished


func animate_from_center_to_right(node: Control) -> Signal:
	var t = create_tween()
	t.tween_property(node, 'position:x', node.size.x, default_speed).set_trans(Tween.TRANS_BACK).set_ease(Tween.EASE_IN)
	
	return t.finished


func animate_slide_from_top(node: Control, offset: float = default_offset, speed := default_speed) -> Signal:
	node.position.y = -node.size.y
	
	var t = create_tween()
	t.tween_property(node, 'position:y', offset, speed).set_trans(Tween.TRANS_BACK).set_ease(Tween.EASE_OUT)
	
	return t.finished


func animate_slide_to_top(node: Control, speed := default_speed) -> Signal:
	var t = create_tween()
	t.tween_property(node, 'position:y', -node.size.y, speed).set_trans(Tween.TRANS_BACK).set_ease(Tween.EASE_IN)
	
	return t.finished


func animate_shrink_x(node: Control) -> Signal:
	node.pivot_offset.x = node.size.x / 2
	node.pivot_offset.y = node.size.y / 2

	var t = create_tween()
	t.tween_property(node, 'scale:x', 0.0, .15)
	
	return t.finished


func animate_shrink_y(node: Control) -> Signal:
	node.pivot_offset.x = node.size.x / 2
	node.pivot_offset.y = node.size.y / 2

	var t = create_tween()
	t.tween_property(node, 'scale:y', 0.0, .15)
	
	return t.finished
