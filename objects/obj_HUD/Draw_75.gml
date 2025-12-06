/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 6E6C182F
/// @DnDArgument : "x" "device_mouse_x_to_gui(0)"
/// @DnDArgument : "y" "device_mouse_y_to_gui(0)"
/// @DnDArgument : "xscale" "0.5"
/// @DnDArgument : "yscale" "0.5"
/// @DnDArgument : "rot" "360*(obj_player.reloadTimer/obj_gun.reloadTime)"
/// @DnDArgument : "sprite" "spr_crosshair"
/// @DnDArgument : "frame" "crosshairID"
/// @DnDSaveInfo : "sprite" "spr_crosshair"
draw_sprite_ext(spr_crosshair, crosshairID, device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 0.5, 0.5, 360*(obj_player.reloadTimer/obj_gun.reloadTime), $FFFFFF & $ffffff, 1);