/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 07754D02
/// @DnDArgument : "init_temp" "1"
/// @DnDArgument : "cond" "i < array_length(cannons[ship_level])"
for(var i = 0; i < array_length(cannons[ship_level]); i += 1) {	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 560C62A0
	/// @DnDParent : 07754D02
	/// @DnDArgument : "xpos" "cannons[ship_level][i]"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "o_bullet"
	/// @DnDSaveInfo : "objectid" "o_bullet"
	instance_create_layer(x + cannons[ship_level][i], y + 0, "Instances", o_bullet);}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 74CC8358
/// @DnDArgument : "steps" "bullet_delay"
alarm_set(0, bullet_delay);