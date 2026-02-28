extends Area2D

@export var connectedObject: Node2D 

@onready var animated_sprite_2d: AnimatedSprite2D = $%AnimatedSprite2D

var is_active = false

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body == get_tree().get_first_node_in_group("Molly"):
		_use_swich()
		
func _use_swich():
	if is_active:
		animated_sprite_2d.play_backwards("right-left") 
	else:
		animated_sprite_2d.play("left-right")
			
		await animated_sprite_2d.animation_finished
		connectedObject.activate(not is_active)
		is_active = not is_active
	pass # Replace with function body.
	


 



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
