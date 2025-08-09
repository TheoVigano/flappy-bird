extends Node2D

const SCROLL_SPEED : int = 200                
var screen_size: Vector2
var ground_height : int
var scroll : int
@onready var ground: Area2D = $ground  


func _ready() -> void:
	screen_size = get_window().size


func _process(delta: float) -> void:
	scroll += SCROLL_SPEED * delta
	if scroll >= screen_size.x:
		scroll = 0
	ground.position.x = -scroll
