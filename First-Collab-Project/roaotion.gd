extends Node3D
@export var rec : CSGBox3D

@export var speed: float 

@export_range(-90, 90) var _z
@export_range(-90, 90) var _y
@export_range(-90, 90) var _x



func _process(delta: float) -> void:
	var _x_ran = get_node_or_null("Control/Panel/_x_range")
	var _y_ran = get_node_or_null("Control/Panel/_y_range")
	var _z_ran = get_node_or_null("Control/Panel/_z_range")
	
	_x = _x_ran.value
	_y = _x_ran.value
	_z = _z_ran.value
	
	var _vect = Vector3(_x,_y,_z)
	
	if _vect.length() !=0:
		_vect = _vect.normalized()
	
	var rad = deg_to_rad(speed)
	
	if rec:
		rec.rotate(_vect, rad * delta)
