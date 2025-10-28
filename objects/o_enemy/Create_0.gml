/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 783B96B0
/// @DnDInput : 2
/// @DnDArgument : "value" "enemy_speed"
/// @DnDArgument : "value_1" "100"
/// @DnDArgument : "instvar" "5"
/// @DnDArgument : "instvar_1" "23"
vspeed = enemy_speed;
__dnd_health = 100;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 0F65EDDA
/// @DnDArgument : "steps" "attack_delay"
alarm_set(0, attack_delay);