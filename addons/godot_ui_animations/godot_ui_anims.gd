@tool
extends EditorPlugin


func _enter_tree() -> void:
	add_autoload_singleton('UIAnimation', "res://addons/godot_ui_animations/UIAnimationHandler.tscn")


func _exit_tree() -> void:
	# Clean-up of the plugin goes here.
	pass
