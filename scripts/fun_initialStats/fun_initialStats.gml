/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 57EE66A6
/// @DnDComment : 
/// @DnDArgument : "funcName" "fun_initialStats"
function fun_initialStats() {	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 111B7F84
	/// @DnDInput : 14
	/// @DnDApplyTo : {obj_player}
	/// @DnDParent : 57EE66A6
	/// @DnDArgument : "expr" "5"
	/// @DnDArgument : "expr_2" "25"
	/// @DnDArgument : "expr_3" "10"
	/// @DnDArgument : "expr_4" "18"
	/// @DnDArgument : "expr_5" "mHealth"
	/// @DnDArgument : "expr_6" "mShield"
	/// @DnDArgument : "expr_7" "mMag"
	/// @DnDArgument : "expr_8" "680"
	/// @DnDArgument : "expr_10" "false"
	/// @DnDArgument : "var" "moveSpd"
	/// @DnDArgument : "var_1" "aimDir"
	/// @DnDArgument : "var_2" "mHealth"
	/// @DnDArgument : "var_3" "mShield"
	/// @DnDArgument : "var_4" "mMag"
	/// @DnDArgument : "var_5" "pHealth"
	/// @DnDArgument : "var_6" "pShield"
	/// @DnDArgument : "var_7" "pMag"
	/// @DnDArgument : "var_8" "pRes"
	/// @DnDArgument : "var_9" "hitCD"
	/// @DnDArgument : "var_10" "isReloading"
	/// @DnDArgument : "var_11" "reloadTimer"
	/// @DnDArgument : "var_12" "pGunID"
	/// @DnDArgument : "var_13" "critChance"
	with(obj_player) {
	moveSpd = 5;
	aimDir = 0;
	mHealth = 25;
	mShield = 10;
	mMag = 18;
	pHealth = mHealth;
	pShield = mShield;
	pMag = mMag;
	pRes = 680;
	hitCD = 0;
	isReloading = false;
	reloadTimer = 0;
	pGunID = 0;
	critChance = 0;
	
	}}