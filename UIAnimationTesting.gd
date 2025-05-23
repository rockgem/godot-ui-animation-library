extends Control


func _on_slide_from_left_pressed() -> void:
	UIAnimation.animate_slide_from_left($Panel)


func _on_slide_from_right_pressed() -> void:
	UIAnimation.animate_slide_from_right($Panel)


func _on_popup_pressed() -> void:
	UIAnimation.animate_pop($Panel)


func _on_shrink_pressed() -> void:
	UIAnimation.animate_shrink($Panel)


func _on_slide_to_left_pressed() -> void:
	UIAnimation.animate_slide_to_left($Panel)


func _on_slide_to_right_pressed() -> void:
	UIAnimation.animate_slide_to_right($Panel)


func _on_reset_position_center_pressed() -> void:
	$Panel.position.x = (get_viewport().get_visible_rect().size.x / 2) - ($Panel.size.x / 2)
	$Panel.position.y = (get_viewport().get_visible_rect().size.y / 2) - ($Panel.size.y / 2)
	
	$Panel.scale = Vector2.ONE


func _on_slide_from_left_to_center_pressed() -> void:
	UIAnimation.animate_from_left_to_center($Panel)


func _on_slide_from_right_to_center_pressed() -> void:
	UIAnimation.animate_from_right_to_center($Panel)
