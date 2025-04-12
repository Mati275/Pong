extends CharacterBody2D

var speed : int = 600


func move(delta):
	var direction = Input.get_axis("player_2_up", "player_2_down")
	velocity.y = speed * direction * delta
	
	var move_and_collide = move_and_collide(velocity)
	
	#if move_and_collide:
		#print(get_slide_collision(1))
		#print("hola")


func _physics_process(delta):
	move(delta)
