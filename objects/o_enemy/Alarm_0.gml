/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 02DF6B82
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "var" "bullet"
/// @DnDArgument : "objectid" "o_bullet_enemy"
/// @DnDSaveInfo : "objectid" "o_bullet_enemy"
bullet = instance_create_layer(x + 0, y + 0, "Instances", o_bullet_enemy);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6BD10830
/// @DnDArgument : "expr" "attack"
/// @DnDArgument : "var" "bullet.damage"
bullet.damage = attack;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 65374BC1
/// @DnDArgument : "steps" "attack_delay"
alarm_set(0, attack_delay);