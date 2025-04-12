extends RigidBody2D


func _ready():
	linear_velocity = Vector2(-300, 0)

func _integrate_forces(state):
	print(state.get_contact_collider_object(1))
	#for i in get_contact_count()
		#

#func _on_body_exited(body):
	#var impulse : Vector2 = Vector2(100, 0)
	#apply_central_impulse(impulse)
	#print("hola")
