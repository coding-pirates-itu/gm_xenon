/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 613A4717
/// @DnDArgument : "health" "-other.damage * 100 / life"
/// @DnDArgument : "health_relative" "1"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;__dnd_health += real(-other.damage * 100 / life);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 01116D90
/// @DnDArgument : "code" "/// @description GML Visual lacks this basic call$(13_10)part_particles_burst(global.ps_blast, x, y, ps_blast);"
/// @description GML Visual lacks this basic call
part_particles_burst(global.ps_blast, x, y, ps_blast);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 558492AC
/// @DnDApplyTo : other
with(other) instance_destroy();