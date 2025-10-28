/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 191ACF06
draw_self();

/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Health
/// @DnDVersion : 1
/// @DnDHash : 6DBE07E7
/// @DnDArgument : "x1" "-sprite_width / 2 + 10"
/// @DnDArgument : "x1_relative" "1"
/// @DnDArgument : "y1" "sprite_height + 10"
/// @DnDArgument : "y1_relative" "1"
/// @DnDArgument : "x2" "sprite_width / 2 - 10"
/// @DnDArgument : "x2_relative" "1"
/// @DnDArgument : "y2" "sprite_height + 20"
/// @DnDArgument : "y2_relative" "1"
/// @DnDArgument : "backcol" "$00FFFFFF"
/// @DnDArgument : "mincol" "$FF0B0B66"
/// @DnDArgument : "maxcol" "$FF00A52E"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;draw_healthbar(x + -sprite_width / 2 + 10, y + sprite_height + 10, x + sprite_width / 2 - 10, y + sprite_height + 20, __dnd_health, $00FFFFFF, $FF0B0B66 & $FFFFFF, $FF00A52E & $FFFFFF, 0, (($00FFFFFF>>24) != 0), (($FFFFFFFF>>24) != 0));