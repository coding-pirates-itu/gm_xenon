/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 1827222A
/// @DnDArgument : "var" "nof_levels"
/// @DnDArgument : "value" "2"
var nof_levels = 2;

/// @DnDAction : YoYo Games.Data Structures.Create_List
/// @DnDVersion : 1
/// @DnDHash : 2C3DE4A2
/// @DnDInput : 2
/// @DnDArgument : "var" "star_speeds"
/// @DnDArgument : "var_1" "star_sprites"
star_speeds = ds_list_create();
star_sprites = ds_list_create();

/// @DnDAction : YoYo Games.Data Structures.List_Add
/// @DnDVersion : 1
/// @DnDHash : 45D51867
/// @DnDInput : 2
/// @DnDArgument : "var" "star_speeds"
/// @DnDArgument : "value" "3"
/// @DnDArgument : "value_1" "5"
ds_list_add(star_speeds, 3, 5);

/// @DnDAction : YoYo Games.Data Structures.List_Add
/// @DnDVersion : 1
/// @DnDHash : 3F139006
/// @DnDInput : 2
/// @DnDArgument : "var" "star_sprites"
/// @DnDArgument : "value" "s_star_1"
/// @DnDArgument : "value_1" "s_star_2"
ds_list_add(star_sprites, s_star_1, s_star_2);

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 43D0A2C6
/// @DnDArgument : "funcName" "CreateStar"
/// @DnDArgument : "arg" "level"
function CreateStar(level) {	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 06A0FCBE
	/// @DnDParent : 43D0A2C6
	/// @DnDArgument : "xpos" "random(room_width)"
	/// @DnDArgument : "ypos" "random(room_height)"
	/// @DnDArgument : "var" "star"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "star_prefab"
	/// @DnDArgument : "layer" "star_layer"
	var star = instance_create_layer(random(room_width), random(room_height), star_layer, star_prefab);

	/// @DnDAction : YoYo Games.Data Structures.List_Get_At
	/// @DnDVersion : 1
	/// @DnDHash : 618AB457
	/// @DnDParent : 43D0A2C6
	/// @DnDArgument : "assignee" "star_speed"
	/// @DnDArgument : "assignee_temp" "1"
	/// @DnDArgument : "var" "star_speeds"
	/// @DnDArgument : "index" "level"
	var star_speed = ds_list_find_value(star_speeds, level);

	/// @DnDAction : YoYo Games.Data Structures.List_Get_At
	/// @DnDVersion : 1
	/// @DnDHash : 18163DA9
	/// @DnDParent : 43D0A2C6
	/// @DnDArgument : "assignee" "star_sprite"
	/// @DnDArgument : "assignee_temp" "1"
	/// @DnDArgument : "var" "star_sprites"
	/// @DnDArgument : "index" "level"
	var star_sprite = ds_list_find_value(star_sprites, level);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6EBB68DD
	/// @DnDInput : 3
	/// @DnDParent : 43D0A2C6
	/// @DnDArgument : "expr" "star_speed"
	/// @DnDArgument : "expr_1" "star_sprite"
	/// @DnDArgument : "expr_2" "random(star.image_number)"
	/// @DnDArgument : "var" "star.vspeed"
	/// @DnDArgument : "var_1" "star.sprite_index"
	/// @DnDArgument : "var_2" "star.image_index"
	star.vspeed = star_speed;
	star.sprite_index = star_sprite;
	star.image_index = random(star.image_number);}

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 1CC6A138
/// @DnDArgument : "var" "stars_on_level"
/// @DnDArgument : "value" "amount"
var stars_on_level = amount;

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 59FFDC51
/// @DnDArgument : "init" "lvl = 0"
/// @DnDArgument : "init_temp" "1"
/// @DnDArgument : "cond" "lvl < nof_levels"
/// @DnDArgument : "expr" "lvl += 1"
for(var lvl = 0; lvl < nof_levels; lvl += 1) {	/// @DnDAction : YoYo Games.Loops.For_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 4A6BF6BA
	/// @DnDParent : 59FFDC51
	/// @DnDArgument : "init_temp" "1"
	/// @DnDArgument : "cond" "i < stars_on_level"
	for(var i = 0; i < stars_on_level; i += 1) {	/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 78888602
		/// @DnDParent : 4A6BF6BA
		/// @DnDArgument : "function" "CreateStar"
		/// @DnDArgument : "arg" "lvl"
		CreateStar(lvl);}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 52F2755A
	/// @DnDParent : 59FFDC51
	/// @DnDArgument : "expr" "stars_on_level / level_factor"
	/// @DnDArgument : "var" "stars_on_level"
	stars_on_level = stars_on_level / level_factor;}