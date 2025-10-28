/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 298EA1E0
/// @DnDArgument : "health" "-other.damage * 100 / life"
/// @DnDArgument : "health_relative" "1"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;__dnd_health += real(-other.damage * 100 / life);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 7B0351B2
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 364F28E8
/// @DnDArgument : "code" "/// @description GML Visual lacks this basic call$(13_10)part_particles_burst(global.ps_blast, x, y, ps_blast);"
/// @description GML Visual lacks this basic call
part_particles_burst(global.ps_blast, x, y, ps_blast);

/// @DnDAction : YoYo Games.Instance Variables.If_Health
/// @DnDVersion : 1
/// @DnDHash : 52625238
/// @DnDArgument : "op" "3"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
if(__dnd_health <= 0){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 62B600AA
	/// @DnDParent : 52625238
	instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Call_User_Event
	/// @DnDVersion : 1
	/// @DnDHash : 7F580591
	/// @DnDApplyTo : {o_game_controller}
	/// @DnDParent : 52625238
	with(o_game_controller) {
	event_user(0);
	}}