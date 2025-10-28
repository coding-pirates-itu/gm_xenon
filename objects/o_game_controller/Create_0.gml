/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 111144EC
/// @DnDArgument : "var" "global.score"
global.score = 0;

/// @DnDAction : YoYo Games.Particles.Part_Syst_Create
/// @DnDVersion : 1.2
/// @DnDHash : 3AD9F06B
/// @DnDArgument : "var" "global.ps_blast"
/// @DnDArgument : "persist" "1"
/// @DnDArgument : "partsys" "ps_blast"
/// @DnDSaveInfo : "partsys" "ps_blast"
global.ps_blast = part_system_create_layer("Instances", 1, ps_blast);