extends CharacterBody2D

var speed : int = 600


func move(delta):
	var direction = Input.get_axis("player_2_up", "player_2_down")
	velocity.y = speed * direction * delta
	
	var move_and_collide = move_and_collide(velocity)

func _physics_process(delta):
	move(delta)
