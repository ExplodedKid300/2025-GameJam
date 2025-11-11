/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4AEA931E
/// @DnDArgument : "expr" "gamepad_is_connected(0) ? gamepad.RT : mouse_check_button(mb_left)"
/// @DnDArgument : "var" "_trigger"
_trigger = gamepad_is_connected(0) ? gamepad.RT : mouse_check_button(mb_left);

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
	/// @DnDArgument : "target" "_sfx"
	/// @DnDArgument : "target_temp" "1"
	/// @DnDArgument : "soundid" "gunshotSFX"
	/// @DnDArgument : "pitch" "random_range(0.75, 1.25)"
	/// @DnDSaveInfo : "soundid" "gunshotSFX"
	var _sfx = audio_play_sound(gunshotSFX, 0, 0, 1.0, undefined, random_range(0.75, 1.25));

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