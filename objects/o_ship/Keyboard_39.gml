/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5DBD2CB5
/// @DnDArgument : "var" "x + sprite_width/2"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "right_boundary"
if(x + sprite_width/2 < right_boundary){	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 7C703638
	/// @DnDParent : 5DBD2CB5
	/// @DnDArgument : "value" "ship_speed"
	/// @DnDArgument : "value_relative" "1"
	x += ship_speed;}