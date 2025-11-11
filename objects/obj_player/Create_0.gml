/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 7E7002AE
/// @DnDArgument : "function" "audio_group_load"
/// @DnDArgument : "arg" "SFX"
audio_group_load(SFX);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 738C0191
/// @DnDArgument : "var" "pGunID"
pGunID = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 12FB6A99
/// @DnDArgument : "expr" "layer_tilemap_get_id("Walls")"
/// @DnDArgument : "var" "tmCol"
tmCol = layer_tilemap_get_id("Walls");

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 026EA02F
/// @DnDInput : 2
/// @DnDArgument : "expr" "5"
/// @DnDArgument : "var" "moveSpd"
/// @DnDArgument : "var_1" "aimDir"
moveSpd = 5;
aimDir = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 590E946D
/// @DnDInput : 10
/// @DnDArgument : "expr" "25"
/// @DnDArgument : "expr_1" "10"
/// @DnDArgument : "expr_2" "18"
/// @DnDArgument : "expr_3" "mHealth"
/// @DnDArgument : "expr_4" "mShield"
/// @DnDArgument : "expr_5" "mMag"
/// @DnDArgument : "expr_6" "mHealth"
/// @DnDArgument : "expr_7" "mShield"
/// @DnDArgument : "expr_8" "680"
/// @DnDArgument : "var" "mHealth"
/// @DnDArgument : "var_1" "mShield"
/// @DnDArgument : "var_2" "mMag"
/// @DnDArgument : "var_3" "pHealth"
/// @DnDArgument : "var_4" "pShield"
/// @DnDArgument : "var_5" "pMag"
/// @DnDArgument : "var_6" "sHealth"
/// @DnDArgument : "var_7" "sShield"
/// @DnDArgument : "var_8" "pRes"
/// @DnDArgument : "var_9" "hitCD"
mHealth = 25;
mShield = 10;
mMag = 18;
pHealth = mHealth;
pShield = mShield;
pMag = mMag;
sHealth = mHealth;
sShield = mShield;
pRes = 680;
hitCD = 0;

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 61D084C7
/// @DnDArgument : "funcName" "fun_takeDamage"
/// @DnDArgument : "arg" "dmg"
function fun_takeDamage(dmg) {	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4D2135CC
	/// @DnDParent : 61D084C7
	/// @DnDArgument : "expr" "5"
	/// @DnDArgument : "var" "hitCD"
	hitCD = 5;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 683862DA
	/// @DnDParent : 61D084C7
	/// @DnDArgument : "expr" "pShield > 0"
	if(pShield > 0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 20668420
		/// @DnDParent : 683862DA
		/// @DnDArgument : "expr" "dmg > pShield ? 0 : pShield - dmg "
		/// @DnDArgument : "var" "pShield"
		pShield = dmg > pShield ? 0 : pShield - dmg ;}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 600DC0A8
	/// @DnDParent : 61D084C7
	else{	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 01EA1C5C
		/// @DnDParent : 600DC0A8
		/// @DnDArgument : "expr" "dmg > pHealth ? 0 : pHealth - dmg "
		/// @DnDArgument : "var" "pHealth"
		pHealth = dmg > pHealth ? 0 : pHealth - dmg ;}}