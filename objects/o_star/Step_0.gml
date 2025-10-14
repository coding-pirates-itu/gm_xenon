/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 22E514DC
/// @DnDArgument : "var" "y"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "room_height"
if(y > room_height){	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 7F915F76
	/// @DnDInput : 2
	/// @DnDParent : 22E514DC
	/// @DnDArgument : "value_1" "random_range(0, room_width)"
	/// @DnDArgument : "instvar" "1"
	y = 0;
	x = random_range(0, room_width);}