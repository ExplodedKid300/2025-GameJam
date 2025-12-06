/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0528DE6D
/// @DnDInput : 2
/// @DnDArgument : "expr" "device_mouse_x_to_gui(0)"
/// @DnDArgument : "expr_1" "device_mouse_y_to_gui(0)"
/// @DnDArgument : "var" "curX"
/// @DnDArgument : "var_1" "curY"
curX = device_mouse_x_to_gui(0);
curY = device_mouse_y_to_gui(0);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 14F67E9C
/// @DnDArgument : "x" "curX"
/// @DnDArgument : "y" "curY"
/// @DnDArgument : "sprite" "spr_cursur"
/// @DnDArgument : "frame" "cursorID"
/// @DnDArgument : "col" "$FFFFFFFF"
/// @DnDSaveInfo : "sprite" "spr_cursur"
draw_sprite_ext(spr_cursur, cursorID, curX, curY, 1, 1, 0, $FFFFFFFF & $ffffff, 1);