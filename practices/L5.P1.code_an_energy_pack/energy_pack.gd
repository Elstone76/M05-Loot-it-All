extends Area2D
var health := 20


func _ready() -> void:
	area_entered.connect(_on_area_entered)
	# This call updates the health bar to match the health variable when the
	# game starts.
	set_health(health)
	
func set_health(new_health: int) -> void:
	health = new_health

func _on_area_entered(area_that_entered: Area2D) -> void:
	set_health(health + 10)
