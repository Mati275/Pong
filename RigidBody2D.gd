extends RigidBody2D

var impulse : Vector2 = Vector2(2, 0)

func _ready():
	linear_velocity = Vector2(-300, 0)

func _integrate_forces(state):
	print(state.get_contact_collider_object(1))
	print(state.get_contact_count())
	for i in state.get_contact_count():
		var object = state.get_contact_collider_object(i)
		if object is CharacterBody2D:
			if linear_velocity.x > 0:
				linear_velocity.x == (linear_velocity.x + 20) * -1
			if linear_velocity.x < 0:
				linear_velocity.x == (linear_velocity.x + 20) * -1

#func _on_body_exited(body):
	#var impulse : Vector2 = Vector2(100, 0)
	#apply_central_impulse(impulse)
	#print("hola")
