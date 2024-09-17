extends CharacterBody2D

var speed = 100
var player : Player

func _ready():
	player = get_tree().get_first_node_in_group("Player")
	
	
func _physics_process(delta):
	if player != null:
		velocity = Vector2(player.global_position - global_position).normalized() * speed
		move_and_slide()
