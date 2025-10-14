/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 25C260C5
/// @DnDArgument : "var" "x - sprite_width/2"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "boundary"
if(x - sprite_width/2 > boundary){	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 0555C252
	/// @DnDParent : 25C260C5
	/// @DnDArgument : "value" "-ship_speed"
	/// @DnDArgument : "value_relative" "1"
	x += -ship_speed;}