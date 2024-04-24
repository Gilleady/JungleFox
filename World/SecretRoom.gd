extends Area2D

func _on_Portal_body_entered(body):
	body.visible = false
	$AnimationSecretRoom.play("SecretRoom")

func _on_AnimationPlayer_animation_finished(anim_name):
	if (anim_name == "SecretRoom"):
		get_tree().change_scene("res://SecretRoom.tscn")
		$"/root/World/CanvasLayer/Label".text = "Kills: " + str(PlayerStats.kills)
		# PlayerStats.health = PlayerStats.max_health
		# PlayerStats.kills = 0
