extends RigidBody2D

var counter : int 
var speed : int = 400

func _draw():
	draw_circle(Vector2(0,0), 10, Color(1,1,1))

func _ready():
	linear_velocity = Vector2(randf_range(-1, 1), randf_range(-0.2, 0.2)).normalized() * speed

# BALL TOUCH PLAYER
func _on_body_entered(body):
	if body is CharacterBody2D:
		var direction : Vector2 = (global_position - body.global_position).normalized()
		#print((global_position - body.global_position).normalized())
		linear_velocity = direction * calculate_new_speed()

# Return the speed for each time the ball hit a player
func calculate_new_speed():
	var new_speed : int
	new_speed = (counter * 20) + speed
	counter += 1
	return new_speed


# BALL TOUCH SCORE_PLAYER_2
func _on_score_player_2_body_entered(body):
	$"../Win_text".text = "PLAYER 2 WIN!"
	$"../Win_text".visible = true
	get_tree().paused = true
	queue_free()

# BALL TOUCH SCORE_PLAYER_1
func _on_score_player_1_body_entered(body):
	$"../Win_text".text = "PLAYER 1 WIN!"
	$"../Win_text".visible = true
	get_tree().paused = true
	queue_free()
