extends TileMap

const GrassEffect = preload("res://Effects/GrassEffect.tscn")

var stats = PlayerStats

func create_grass_effect():
	var grassEffect = GrassEffect.instance()
	get_parent().add_child(grassEffect)
	grassEffect.global_position = global_position

func _on_Hurtbox_area_entered(_area):
	create_grass_effect()
	queue_free()
	
	var chance = randi() % 100 + 1
	chance = chance % 2
	if (chance == 0):
		stats.health += 0.5
