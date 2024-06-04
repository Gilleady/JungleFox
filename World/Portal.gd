extends Area2D

func _on_Portal_body_entered(body):
	body.visible = false
	$AnimationPortal.play("Portal")

func _on_AnimationPlayer_animation_finished(anim_name):
	if (anim_name == "Portal"):
		get_tree().change_scene("res://Menu/GameWin.tscn")
		PlayerStats.health = PlayerStats.max_health
		PlayerStats.kills = 0
		PlayerStats.kills_secret_room = 0
	elif (anim_name == "GameOver"):
		get_tree().change_scene("res://Menu/GameOver.tscn")
		PlayerStats.health = PlayerStats.max_health
		PlayerStats.kills = 0
		PlayerStats.kills_secret_room = 0
	elif (anim_name == "BackToWorld"):
		get_tree().change_scene("res://World.tscn")
