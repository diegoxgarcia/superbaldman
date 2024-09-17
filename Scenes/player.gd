class_name Player
extends CharacterBody2D

@onready var animated_sprite_2d = $AnimatedSprite2D
var speed := 400

func _input(event):
	pass

func _physics_process(delta):
	if Input.is_anything_pressed():
		animated_sprite_2d.play("run")
	else:
		animated_sprite_2d.play("idle")
	velocity = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down").normalized() * speed
	move_and_slide()


func _on_area_2d_dead():
	set_physics_process(false)
	animated_sprite_2d.play("dead")
	print_debug("Muerto")
	pass # Replace with function body.
