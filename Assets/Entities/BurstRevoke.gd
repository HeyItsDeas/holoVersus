extends Node2D

#const START_SPEED = 0.0
#const START_ROTATION = 0.0
const PALETTE = "pink"
#const LIFESPAN = null

const TRAITS = []

# cleaner code
onready var Entity = get_parent()
var Animator
var sprite


const MOVE_DATABASE = {
	"Kill" : {
		"root" : "BurstRevoke", 
		"atk_type" : Globals.atk_type.ENTITY,
		"hitcount" : 1,
		"damage" : 0,
		"knockback" : 500 * FMath.S,
		"knockback_type": Globals.knockback_type.RADIAL,
		"atk_level" : 1,
		"fixed_hitstop": 0,
		"fixed_hitstun" : 0,
		"fixed_blockstun" : 0,
		"fixed_entity_hitstop" : 0,
		"guard_drain": 0,
		"guard_gain_on_combo" : 0,
		"EX_gain": 0,
		"hitspark_type" : Globals.hitspark_type.HIT,
		"hitspark_palette" : "pink",
		"KB_angle" : 0,
		"hit_sound" : { ref = "blast2", aux_data = {"vol" : -9} },
	}
}

func init(_aux_data: Dictionary):
	
	# set up starting data
	
	Animator.play("Kill") # starting animation
	
#	Entity.velocity = Vector2(START_SPEED, 0).rotated(START_ROTATION)
	
#	Entity.lifespan = LIFESPAN # set starting lifespan
#	Entity.absorption_value = ABSORPTION # set starting absorption_value

	
func simulate():
	pass
	
	
func query_move_data(move_name) -> Dictionary:
	
	if !move_name in MOVE_DATABASE:
		print("Error: Cannot retrieve move_data for " + move_name)
		return {}
	
	var move_data = MOVE_DATABASE[move_name]
	
	match move_data: # move data may change for certain moves under certain conditions, unique to character
		_ :
			pass
	
	return move_data
	
	
func _on_SpritePlayer_anim_finished(anim_name):
	match anim_name:
		_:
			pass
			
func _on_SpritePlayer_anim_started(anim_name):
	match anim_name:
		_:
			pass

