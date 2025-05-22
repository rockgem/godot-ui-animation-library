# Quick Start
### Installation
Install the plugin through Godot Asset Library (recommended). Or copy the godot_ui_animations folder into addons/ folder

### Usage
Go to your Control node's script, specifically in the `_ready()` function and call `UIAnimation.animate_slide_from_left()` as an example.

# Code examples:
> [!NOTE]
> This add-on is currently in development, it may get future updates and improvements in the future.

**Making the panel popup in the center of the screen**

https://github.com/user-attachments/assets/f8084790-d504-47f0-9ff8-d0901b0816de

```
func _ready():
  UIAnimation.animate_pop($Panel)
```

  ### Note that the functions requires a Control reference to be passed in
  ![image](https://github.com/user-attachments/assets/c25307e4-f7a7-4453-986b-28d98dba1196)
  ### It can even be `self` as long as the node being passed in is a Control node
  ![image](https://github.com/user-attachments/assets/eacc4f49-5ca3-49f2-a427-805307274136)




# Available animations currently in this version:

`animate_pop()`
`animate_shrink()`
`animate_slide_from_left()`
`animate_slide_to_left()`
`animate_slide_from_right()`
`animate_slide_to_right()`
`animate_from_left_to_center()`
`animate_from_center_to_left()`


https://github.com/user-attachments/assets/90c8728d-0d18-4cff-8223-4471f86ffe3d

