/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6CC2EB2A
/// @DnDInput : 4
/// @DnDArgument : "expr" "obj_player.pHealth/obj_player.mHealth"
/// @DnDArgument : "expr_1" "obj_player.pShield/obj_player.mShield"
/// @DnDArgument : "expr_2" "obj_player.sHealth/obj_player.mHealth"
/// @DnDArgument : "expr_3" "obj_player.sShield/obj_player.mShield"
/// @DnDArgument : "var" "nHealth"
/// @DnDArgument : "var_1" "nShield"
/// @DnDArgument : "var_2" "nsHealth"
/// @DnDArgument : "var_3" "nsShield"
nHealth = obj_player.pHealth/obj_player.mHealth;
nShield = obj_player.pShield/obj_player.mShield;
nsHealth = obj_player.sHealth/obj_player.mHealth;
nsShield = obj_player.sShield/obj_player.mShield;

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 4C79AB50
/// @DnDInput : 3
/// @DnDArgument : "var" "s"
/// @DnDArgument : "value" "0.5"
/// @DnDArgument : "var_1" "w"
/// @DnDArgument : "value_1" "255"
/// @DnDArgument : "var_2" "o"
/// @DnDArgument : "value_2" "10"
var s = 0.5;
var w = 255;
var o = 10;

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 4DCFB40E
/// @DnDArgument : "xscale" "1.366"
/// @DnDArgument : "yscale" "0.17"
/// @DnDArgument : "sprite" "shade"
/// @DnDArgument : "frame" "1"
/// @DnDSaveInfo : "sprite" "shade"
draw_sprite_ext(shade, 1, 0, 0, 1.366, 0.17, 0, $FFFFFF & $ffffff, 1);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 7B058B15
/// @DnDArgument : "x" "1366"
/// @DnDArgument : "y" "50"
/// @DnDArgument : "xscale" "5"
/// @DnDArgument : "yscale" "5"
/// @DnDArgument : "sprite" "spr_gun"
/// @DnDArgument : "frame" "obj_player.pGunID"
/// @DnDSaveInfo : "sprite" "spr_gun"
draw_sprite_ext(spr_gun, obj_player.pGunID, 1366, 50, 5, 5, 0, $FFFFFF & $ffffff, 1);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 2BDFEE21
/// @DnDInput : 9
/// @DnDDisabled : 1
/// @DnDArgument : "function" "draw_sprite_radial"
/// @DnDArgument : "arg" "sprite"
/// @DnDArgument : "arg_1" "sprite.frame"
/// @DnDArgument : "arg_2" "meterValue"
/// @DnDArgument : "arg_3" "xPos"
/// @DnDArgument : "arg_4" "yPos"
/// @DnDArgument : "arg_5" "xScale"
/// @DnDArgument : "arg_6" "yScale"
/// @DnDArgument : "arg_7" "color"
/// @DnDArgument : "arg_8" "alpha"


/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 52F32EE3
/// @DnDInput : 9
/// @DnDArgument : "function" "draw_sprite_radial"
/// @DnDArgument : "arg" "spr_meterBG"
/// @DnDArgument : "arg_1" "obj_player.pShield > 0 ? 2 : 1"
/// @DnDArgument : "arg_2" "1"
/// @DnDArgument : "arg_3" "((w/2) * s) + o"
/// @DnDArgument : "arg_4" "((w/2) * s) + o"
/// @DnDArgument : "arg_5" "s"
/// @DnDArgument : "arg_6" "s"
/// @DnDArgument : "arg_7" "c_white"
/// @DnDArgument : "arg_8" "1"
draw_sprite_radial(spr_meterBG, obj_player.pShield > 0 ? 2 : 1, 1, ((w/2) * s) + o, ((w/2) * s) + o, s, s, c_white, 1);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 2984AEA7
/// @DnDInput : 9
/// @DnDArgument : "function" "draw_sprite_radial"
/// @DnDArgument : "arg" "spr_meter"
/// @DnDArgument : "arg_1" "1"
/// @DnDArgument : "arg_2" "nsHealth"
/// @DnDArgument : "arg_3" "((w/2) * s) + o"
/// @DnDArgument : "arg_4" "((w/2) * s) + o"
/// @DnDArgument : "arg_5" "-s"
/// @DnDArgument : "arg_6" "s"
/// @DnDArgument : "arg_7" "c_red"
/// @DnDArgument : "arg_8" "1"
draw_sprite_radial(spr_meter, 1, nsHealth, ((w/2) * s) + o, ((w/2) * s) + o, -s, s, c_red, 1);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 75CA3592
/// @DnDInput : 9
/// @DnDArgument : "function" "draw_sprite_radial"
/// @DnDArgument : "arg" "spr_meter"
/// @DnDArgument : "arg_1" "1"
/// @DnDArgument : "arg_2" "nHealth"
/// @DnDArgument : "arg_3" "((w/2) * s) + o"
/// @DnDArgument : "arg_4" "((w/2) * s) + o"
/// @DnDArgument : "arg_5" "-s"
/// @DnDArgument : "arg_6" "s"
/// @DnDArgument : "arg_7" "c_lime"
/// @DnDArgument : "arg_8" "1"
draw_sprite_radial(spr_meter, 1, nHealth, ((w/2) * s) + o, ((w/2) * s) + o, -s, s, c_lime, 1);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 1B1F1629
/// @DnDInput : 9
/// @DnDArgument : "function" "draw_sprite_radial"
/// @DnDArgument : "arg" "spr_meter"
/// @DnDArgument : "arg_1" "2"
/// @DnDArgument : "arg_2" "nsShield"
/// @DnDArgument : "arg_3" "((w/2) * s) + o"
/// @DnDArgument : "arg_4" "((w/2) * s) + o"
/// @DnDArgument : "arg_5" "-s"
/// @DnDArgument : "arg_6" "s"
/// @DnDArgument : "arg_7" "c_teal"
/// @DnDArgument : "arg_8" "0.5"
draw_sprite_radial(spr_meter, 2, nsShield, ((w/2) * s) + o, ((w/2) * s) + o, -s, s, c_teal, 0.5);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 45B51799
/// @DnDInput : 9
/// @DnDArgument : "function" "draw_sprite_radial"
/// @DnDArgument : "arg" "spr_meter"
/// @DnDArgument : "arg_1" "2"
/// @DnDArgument : "arg_2" "nShield"
/// @DnDArgument : "arg_3" "((w/2) * s) + o"
/// @DnDArgument : "arg_4" "((w/2) * s) + o"
/// @DnDArgument : "arg_5" "-s"
/// @DnDArgument : "arg_6" "s"
/// @DnDArgument : "arg_7" "c_aqua"
/// @DnDArgument : "arg_8" "1"
draw_sprite_radial(spr_meter, 2, nShield, ((w/2) * s) + o, ((w/2) * s) + o, -s, s, c_aqua, 1);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 209F5854
/// @DnDInput : 9
/// @DnDArgument : "function" "draw_sprite_radial"
/// @DnDArgument : "arg" "spr_meter"
/// @DnDArgument : "arg_1" "3"
/// @DnDArgument : "arg_2" "1"
/// @DnDArgument : "arg_3" "((w/2) * s) + o"
/// @DnDArgument : "arg_4" "((w/2) * s) + o"
/// @DnDArgument : "arg_5" "s"
/// @DnDArgument : "arg_6" "s"
/// @DnDArgument : "arg_7" "c_white"
/// @DnDArgument : "arg_8" "1"
draw_sprite_radial(spr_meter, 3, 1, ((w/2) * s) + o, ((w/2) * s) + o, s, s, c_white, 1);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 30DF66DC
/// @DnDArgument : "font" "OCR_A"
/// @DnDSaveInfo : "font" "OCR_A"
draw_set_font(OCR_A);

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 1CCD0159
/// @DnDArgument : "expr" "obj_player.isReloading"
if(obj_player.isReloading){	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 0CEEBFDF
	/// @DnDParent : 1CCD0159
	/// @DnDArgument : "x" "((o*2) + (w*s))"
	/// @DnDArgument : "y" "40"
	/// @DnDArgument : "caption" ""Am: ""
	/// @DnDArgument : "var" ""Reloading""
	draw_text(((o*2) + (w*s)), 40, string("Am: ") + string("Reloading"));}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 78625859
else{	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 4FFD13CD
	/// @DnDParent : 78625859
	/// @DnDArgument : "x" "((o*2) + (w*s))"
	/// @DnDArgument : "y" "40"
	/// @DnDArgument : "caption" ""Am: ""
	/// @DnDArgument : "var" "string(obj_player.pMag) + " | " + string(obj_player.pRes)"
	draw_text(((o*2) + (w*s)), 40, string("Am: ") + string(string(obj_player.pMag) + " | " + string(obj_player.pRes)));}

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 5B9622CA
/// @DnDArgument : "x" "((o*2) + (w*s))"
/// @DnDArgument : "y" "60"
/// @DnDArgument : "caption" ""HP: ""
/// @DnDArgument : "var" "string_format(obj_player.pHealth, 0, 0) + " / " + string(obj_player.mHealth)"
draw_text(((o*2) + (w*s)), 60, string("HP: ") + string(string_format(obj_player.pHealth, 0, 0) + " / " + string(obj_player.mHealth)));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 7ABDB55C
/// @DnDArgument : "x" "((o*2) + (w*s))"
/// @DnDArgument : "y" "80"
/// @DnDArgument : "caption" ""SP: ""
/// @DnDArgument : "var" "string_format(obj_player.pShield, 0, 0) + " / " + string(obj_player.mShield)"
draw_text(((o*2) + (w*s)), 80, string("SP: ") + string(string_format(obj_player.pShield, 0, 0) + " / " + string(obj_player.mShield)));

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 0AFDFEBB
/// @DnDInput : 8
/// @DnDArgument : "var" "perRow"
/// @DnDArgument : "value" "100"
/// @DnDArgument : "var_1" "cardSpacing"
/// @DnDArgument : "value_1" "7"
/// @DnDArgument : "var_2" "scale"
/// @DnDArgument : "value_2" "0.05"
/// @DnDArgument : "var_3" "zoomScale"
/// @DnDArgument : "value_3" "0.03"
/// @DnDArgument : "var_4" "zoomX"
/// @DnDArgument : "value_4" "800"
/// @DnDArgument : "var_5" "zoomY"
/// @DnDArgument : "value_5" "200"
/// @DnDArgument : "var_6" "hoveredID"
/// @DnDArgument : "value_6" "-1"
/// @DnDArgument : "var_7" "rowSpacing"
/// @DnDArgument : "value_7" "55"
var perRow = 100;
var cardSpacing = 7;
var scale = 0.05;
var zoomScale = 0.03;
var zoomX = 800;
var zoomY = 200;
var hoveredID = -1;
var rowSpacing = 55;

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 0FF9D919
/// @DnDArgument : "cond" "i < array_length(obj_player.cards)"
for(i = 0; i < array_length(obj_player.cards); i += 1) {	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0C35D625
	/// @DnDInput : 4
	/// @DnDParent : 0FF9D919
	/// @DnDArgument : "var" "row"
	/// @DnDArgument : "value" "floor(i/perRow)"
	/// @DnDArgument : "var_1" "col"
	/// @DnDArgument : "value_1" "i mod perRow"
	/// @DnDArgument : "var_2" "xPos"
	/// @DnDArgument : "value_2" "400+(col*cardSpacing)"
	/// @DnDArgument : "var_3" "yPos"
	/// @DnDArgument : "value_3" "10+(row*rowSpacing)"
	var row = floor(i/perRow);
	var col = i mod perRow;
	var xPos = 400+(col*cardSpacing);
	var yPos = 10+(row*rowSpacing);

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 331BFE3E
	/// @DnDParent : 0FF9D919
	/// @DnDArgument : "x" "xPos"
	/// @DnDArgument : "y" "yPos"
	/// @DnDArgument : "xscale" "scale"
	/// @DnDArgument : "yscale" "scale"
	/// @DnDArgument : "sprite" "Sprite11"
	/// @DnDArgument : "frame" "obj_player.cards[i]"
	/// @DnDSaveInfo : "sprite" "Sprite11"
	draw_sprite_ext(Sprite11, obj_player.cards[i], xPos, yPos, scale, scale, 0, $FFFFFF & $ffffff, 1);

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 236F6DD6
	/// @DnDParent : 0FF9D919
	/// @DnDArgument : "expr" "mouse_x > xPos - (sprite_get_width(Sprite11) * scale)/2 && mouse_x < xPos + (sprite_get_width(Sprite11) * scale)/2 && mouse_y > yPos - (sprite_get_height(Sprite11) * scale)/2 && mouse_y < yPos + (sprite_get_height(Sprite11) * scale)/2"
	if(mouse_x > xPos - (sprite_get_width(Sprite11) * scale)/2 && mouse_x < xPos + (sprite_get_width(Sprite11) * scale)/2 && mouse_y > yPos - (sprite_get_height(Sprite11) * scale)/2 && mouse_y < yPos + (sprite_get_height(Sprite11) * scale)/2){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 289493DC
		/// @DnDParent : 236F6DD6
		/// @DnDArgument : "expr" "obj_player.cards[i]"
		/// @DnDArgument : "var" "hoveredID"
		hoveredID = obj_player.cards[i];}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 329AB670
	/// @DnDParent : 0FF9D919
	/// @DnDArgument : "expr" "hoveredID != -1"
	if(hoveredID != -1){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 3F39B2CE
		/// @DnDParent : 329AB670
		/// @DnDArgument : "x" "zoomX"
		/// @DnDArgument : "y" "zoomY"
		/// @DnDArgument : "xscale" "zoomScale"
		/// @DnDArgument : "yscale" "zoomScale"
		/// @DnDArgument : "sprite" "Sprite11"
		/// @DnDArgument : "frame" "hoveredID"
		/// @DnDSaveInfo : "sprite" "Sprite11"
		draw_sprite_ext(Sprite11, hoveredID, zoomX, zoomY, zoomScale, zoomScale, 0, $FFFFFF & $ffffff, 1);}}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 2C18A14F
/// @DnDArgument : "expr" "obj_player.pHealth <> _healthCheck"
if(obj_player.pHealth <> _healthCheck){	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 2E0E50FC
	/// @DnDParent : 2C18A14F
	/// @DnDArgument : "expr" "obj_player.pHealth < _healthCheck"
	if(obj_player.pHealth < _healthCheck){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 4712DB79
		/// @DnDParent : 2E0E50FC
		/// @DnDArgument : "xscale" "1.366"
		/// @DnDArgument : "yscale" "0.768"
		/// @DnDArgument : "sprite" "vinetteSqr"
		/// @DnDArgument : "col" "$FF0000FF"
		/// @DnDSaveInfo : "sprite" "vinetteSqr"
		draw_sprite_ext(vinetteSqr, 0, 0, 0, 1.366, 0.768, 0, $FF0000FF & $ffffff, 1);}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 15C0490D
	/// @DnDParent : 2C18A14F
	/// @DnDArgument : "expr" "obj_player.pHealth"
	/// @DnDArgument : "var" "_healthCheck"
	_healthCheck = obj_player.pHealth;}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 658D5C20
/// @DnDArgument : "expr" "obj_player.pShield <> _shieldCheck"
if(obj_player.pShield <> _shieldCheck){	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 08DB4B03
	/// @DnDParent : 658D5C20
	/// @DnDArgument : "expr" "obj_player.pShield < _shieldCheck"
	if(obj_player.pShield < _shieldCheck){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 047FE65F
		/// @DnDParent : 08DB4B03
		/// @DnDArgument : "xscale" "1.366"
		/// @DnDArgument : "yscale" "0.768"
		/// @DnDArgument : "sprite" "vinetteSqr"
		/// @DnDArgument : "col" "$FFFFFF00"
		/// @DnDSaveInfo : "sprite" "vinetteSqr"
		draw_sprite_ext(vinetteSqr, 0, 0, 0, 1.366, 0.768, 0, $FFFFFF00 & $ffffff, 1);}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 601BF55C
	/// @DnDParent : 658D5C20
	/// @DnDArgument : "expr" "obj_player.pShield"
	/// @DnDArgument : "var" "_shieldCheck"
	_shieldCheck = obj_player.pShield;}

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 2AEDB8C8
/// @DnDArgument : "init_temp" "1"
/// @DnDArgument : "cond" "i < obj_player.mMag"
for(var i = 0; i < obj_player.mMag; i += 1) {	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 21D12922
	/// @DnDParent : 2AEDB8C8
	/// @DnDArgument : "expr" "i < obj_player.pMag"
	if(i < obj_player.pMag){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 41F21AB5
		/// @DnDParent : 21D12922
		/// @DnDArgument : "x" "((o*2) + (w*s)) + (i * 7)"
		/// @DnDArgument : "y" "35"
		/// @DnDArgument : "rot" "90"
		/// @DnDArgument : "sprite" "bullet"
		/// @DnDArgument : "col" "$FFFFFFFF"
		/// @DnDSaveInfo : "sprite" "bullet"
		draw_sprite_ext(bullet, 0, ((o*2) + (w*s)) + (i * 7), 35, 1, 1, 90, $FFFFFFFF & $ffffff, 1);}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 5AD138A0
	/// @DnDParent : 2AEDB8C8
	else{	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 0618F3B9
		/// @DnDParent : 5AD138A0
		/// @DnDArgument : "x" "((o*2) + (w*s)) + (i * 7)"
		/// @DnDArgument : "y" "35"
		/// @DnDArgument : "rot" "90"
		/// @DnDArgument : "sprite" "bullet"
		/// @DnDArgument : "col" "$FF7F7F7F"
		/// @DnDSaveInfo : "sprite" "bullet"
		draw_sprite_ext(bullet, 0, ((o*2) + (w*s)) + (i * 7), 35, 1, 1, 90, $FF7F7F7F & $ffffff, 1);}}