extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Portal_body_entered(body):
	# GAME WIN
	#if (body == "Player"):
		#body.velocity = 0
		$AnimationPortal.play("Portal")


func _on_AnimationPlayer_animation_finished(anim_name):
	if (anim_name == "Portal"):
		pause_mode = true
		get_tree().change_scene("res://Menu/GameWin.tscn")
	elif (anim_name == "GameOver"):
		get_tree().change_scene("res://Menu/GameOver.tscn")
		PlayerStats.health = PlayerStats.max_health
	
