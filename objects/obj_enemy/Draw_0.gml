/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 0C4F0DB2
draw_self();

/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 71243B40
/// @DnDArgument : "x1" "x - (sprite_width/2) -1 "
/// @DnDArgument : "y1" "((y - 2) - (sprite_height/2)) - 3"
/// @DnDArgument : "x2" "x + (sprite_width/2)"
/// @DnDArgument : "y2" "((y + 0) - (sprite_height/2)) - 3"
/// @DnDArgument : "value" "(pHealth/mHealth) * 100"
/// @DnDArgument : "backcol" "$FF7F7F7F"
/// @DnDArgument : "barcol" "$FF000000"
/// @DnDArgument : "mincol" "$FF00FF00"
/// @DnDArgument : "maxcol" "$FF00FF00"
draw_healthbar(x - (sprite_width/2) -1 , ((y - 2) - (sprite_height/2)) - 3, x + (sprite_width/2), ((y + 0) - (sprite_height/2)) - 3, (pHealth/mHealth) * 100, $FF7F7F7F & $FFFFFF, $FF00FF00 & $FFFFFF, $FF00FF00 & $FFFFFF, 0, (($FF7F7F7F>>24) != 0), (($FF000000>>24) != 0));

/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 1B793FE7
/// @DnDArgument : "x1" "x - (sprite_width/2) -1 "
/// @DnDArgument : "y1" "((y - 0) - (sprite_height/2)) - 3"
/// @DnDArgument : "x2" "x + (sprite_width/2)"
/// @DnDArgument : "y2" "((y + 0) - (sprite_height/2)) - 3"
/// @DnDArgument : "value" "(pShield/mShield) * 100"
/// @DnDArgument : "backcol" "$007F7F7F"
/// @DnDArgument : "barcol" "$FF000000"
/// @DnDArgument : "mincol" "$FFFFFF00"
/// @DnDArgument : "maxcol" "$FFFFFF00"
draw_healthbar(x - (sprite_width/2) -1 , ((y - 0) - (sprite_height/2)) - 3, x + (sprite_width/2), ((y + 0) - (sprite_height/2)) - 3, (pShield/mShield) * 100, $007F7F7F & $FFFFFF, $FFFFFF00 & $FFFFFF, $FFFFFF00 & $FFFFFF, 0, (($007F7F7F>>24) != 0), (($FF000000>>24) != 0));