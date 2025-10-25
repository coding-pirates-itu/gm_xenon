/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 5B9E3DF0
/// @DnDArgument : "funcName" "SpawnEnemy"
function SpawnEnemy() {	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 09C857B4
	/// @DnDParent : 5B9E3DF0
	/// @DnDArgument : "xpos" "random(room_width)"
	/// @DnDArgument : "objectid" "enemy_prefab"
	/// @DnDArgument : "layer" "enemy_layer"
	instance_create_layer(random(room_width), 0, enemy_layer, enemy_prefab);}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 5DF82387
/// @DnDArgument : "steps" "enemy_delay"
alarm_set(0, enemy_delay);