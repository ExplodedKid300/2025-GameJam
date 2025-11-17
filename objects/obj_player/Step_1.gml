/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 17B4FF3E
/// @DnDComment : ==========$(13_10)Stats$(13_10)==========
/// @DnDArgument : "expr" "sHealth > pHealth"
if(sHealth > pHealth){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 23FA4B3E
	/// @DnDParent : 17B4FF3E
	/// @DnDArgument : "expr" "-(mHealth/300)"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "sHealth"
	sHealth += -(mHealth/300);}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 71FE6355
else{	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 34A0909E
	/// @DnDParent : 71FE6355
	/// @DnDArgument : "expr" "pHealth"
	/// @DnDArgument : "var" "sHealth"
	sHealth = pHealth;}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 1A4B5205
/// @DnDArgument : "expr" "sShield > pShield"
if(sShield > pShield){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7AFF9C91
	/// @DnDParent : 1A4B5205
	/// @DnDArgument : "expr" "-(mShield/300)"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "sShield"
	sShield += -(mShield/300);}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 439B98AF
else{	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4A37C0CC
	/// @DnDParent : 439B98AF
	/// @DnDArgument : "expr" "pShield"
	/// @DnDArgument : "var" "sShield"
	sShield = pShield;}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 6FCC83C3
/// @DnDArgument : "expr" "pShield < mShield && hitCD <= 0"
if(pShield < mShield && hitCD <= 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6908711D
	/// @DnDParent : 6FCC83C3
	/// @DnDArgument : "expr" "mShield/500"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "pShield"
	pShield += mShield/500;}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 6B18FC3E
/// @DnDArgument : "expr" "hitCD > 0"
if(hitCD > 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5DA92DE7
	/// @DnDParent : 6B18FC3E
	/// @DnDArgument : "expr" "-1/room_speed"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "hitCD"
	hitCD += -1/room_speed;}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 44C8F09D
/// @DnDArgument : "expr" "reloadTimer > 0"
if(reloadTimer > 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6D49B5E8
	/// @DnDParent : 44C8F09D
	/// @DnDArgument : "expr" "-1/room_speed"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "reloadTimer"
	reloadTimer += -1/room_speed;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 4953E166
	/// @DnDParent : 44C8F09D
	/// @DnDArgument : "expr" "reloadTimer <= 0"
	if(reloadTimer <= 0){	/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 75BE2660
		/// @DnDParent : 4953E166
		/// @DnDArgument : "soundid" "GunClickSFX"
		/// @DnDArgument : "pitch" "1.5"
		/// @DnDSaveInfo : "soundid" "GunClickSFX"
		audio_play_sound(GunClickSFX, 0, 0, 1.0, undefined, 1.5);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 67E30A7B
		/// @DnDInput : 3
		/// @DnDParent : 4953E166
		/// @DnDArgument : "expr_1" "-(min(mMag - pMag, mMag - 1))"
		/// @DnDArgument : "expr_relative_1" "1"
		/// @DnDArgument : "expr_2" "(min(mMag - pMag, mMag - 1))"
		/// @DnDArgument : "expr_relative_2" "1"
		/// @DnDArgument : "var" "isReloading"
		/// @DnDArgument : "var_1" "pRes"
		/// @DnDArgument : "var_2" "pMag"
		isReloading = 0;
		pRes += -(min(mMag - pMag, mMag - 1));
		pMag += (min(mMag - pMag, mMag - 1));}}