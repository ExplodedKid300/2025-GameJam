/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4AEA931E
/// @DnDInput : 3
/// @DnDArgument : "expr" "(gamepad_is_connected(0) ? gamepad.RT : mouse_check_button(mb_left)) && !(isReloading)"
/// @DnDArgument : "expr_1" "gamepad_is_connected(0) ? gamepad.X : mouse_check_button_pressed(mb_right) || keyboard_check_pressed(ord("R"))"
/// @DnDArgument : "expr_2" "gamepad_is_connected(0) ? gamepad.A : keyboard_check_pressed(ord("E"))"
/// @DnDArgument : "var" "_trigger"
/// @DnDArgument : "var_1" "_reload"
/// @DnDArgument : "var_2" "_interact"
_trigger = (gamepad_is_connected(0) ? gamepad.RT : mouse_check_button(mb_left)) && !(isReloading);
_reload = gamepad_is_connected(0) ? gamepad.X : mouse_check_button_pressed(mb_right) || keyboard_check_pressed(ord("R"));
_interact = gamepad_is_connected(0) ? gamepad.A : keyboard_check_pressed(ord("E"));

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 539412B2
/// @DnDArgument : "expr" "(_trigger && obj_gun.shootCD <= 0) && pMag > 0"
if((_trigger && obj_gun.shootCD <= 0) && pMag > 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3E4C5162
	/// @DnDParent : 539412B2
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "pMag"
	pMag += -1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0E56D0B5
	/// @DnDParent : 539412B2
	/// @DnDArgument : "expr" "1/obj_gun.fireRate"
	/// @DnDArgument : "var" "obj_gun.shootCD"
	obj_gun.shootCD = 1/obj_gun.fireRate;

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 0221AD55
	/// @DnDParent : 539412B2
	/// @DnDArgument : "soundid" "gunshotSFX"
	/// @DnDArgument : "pitch" "random_range(0.75, 1.25)"
	/// @DnDSaveInfo : "soundid" "gunshotSFX"
	audio_play_sound(gunshotSFX, 0, 0, 1.0, undefined, random_range(0.75, 1.25));

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 74BC3DC3
	/// @DnDParent : 539412B2
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_bullet"
	/// @DnDArgument : "layer" ""Bullets""
	/// @DnDSaveInfo : "objectid" "obj_bullet"
	instance_create_layer(x + 0, y + 0, "Bullets", obj_bullet);}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 3CFB409A
/// @DnDArgument : "expr" "!isReloading && (_reload && pMag < mMag)"
if(!isReloading && (_reload && pMag < mMag)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 349F7181
	/// @DnDInput : 2
	/// @DnDParent : 3CFB409A
	/// @DnDArgument : "expr" "obj_gun.reloadTime"
	/// @DnDArgument : "expr_1" "1"
	/// @DnDArgument : "var" "reloadTimer"
	/// @DnDArgument : "var_1" "isReloading"
	reloadTimer = obj_gun.reloadTime;
	isReloading = 1;

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 2D13D2EE
	/// @DnDParent : 3CFB409A
	/// @DnDArgument : "soundid" "GunClickSFX"
	/// @DnDSaveInfo : "soundid" "GunClickSFX"
	audio_play_sound(GunClickSFX, 0, 0, 1.0, undefined, 1.0);}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 716DF858
/// @DnDArgument : "expr" "isReloading"
if(isReloading){	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 0900EC4B
	/// @DnDParent : 716DF858
	/// @DnDArgument : "msg" "reloadTimer"
	show_debug_message(string(reloadTimer));}