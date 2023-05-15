extends Sprite2D

@export_category("Chain Chomp Chain")
@export var gravity: float = 10

var id: int
var amount: int
var chomp: Node2D
var pile: Node2D

var _is_chained: bool = true


func _physics_process(delta: float) -> void:
	if _is_chained:
		if !chomp || !pile: return
		global_position = pile.global_position.lerp(chomp.global_position, float(id) / float(amount + 1))
	else:
		global_position += Vector2.DOWN.rotated(global_rotation) * gravity * delta
