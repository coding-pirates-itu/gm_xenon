/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5CD0C40A
/// @DnDArgument : "var" "mouse_x"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "x"
if(mouse_x < x){	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 00BBF326
	/// @DnDParent : 5CD0C40A
	/// @DnDArgument : "value" "-ship_speed"
	/// @DnDArgument : "value_relative" "1"
	x += -ship_speed;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6476C782
/// @DnDArgument : "var" "mouse_x"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "x"
if(mouse_x > x){	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 17C51001
	/// @DnDParent : 6476C782
	/// @DnDArgument : "value" "ship_speed"
	/// @DnDArgument : "value_relative" "1"
	x += ship_speed;}