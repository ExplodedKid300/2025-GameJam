/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 2457BB9A
/// @DnDArgument : "expr" "pShield < mShield && shieldCD <= 0"
if(pShield < mShield && shieldCD <= 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7C01A7B7
	/// @DnDParent : 2457BB9A
	/// @DnDArgument : "expr" "mShield/500"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "pShield"
	pShield += mShield/500;}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 10F7C60E
/// @DnDArgument : "expr" "pHealth <= 0"
if(pHealth <= 0){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 75273700
	/// @DnDParent : 10F7C60E
	instance_destroy();}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 32185744
/// @DnDArgument : "expr" "hitCD > 0"
if(hitCD > 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 14BB4FA3
	/// @DnDParent : 32185744
	/// @DnDArgument : "expr" "-1/room_speed"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "hitCD"
	hitCD += -1/room_speed;}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 664EEE64
/// @DnDArgument : "expr" "shieldCD > 0"
if(shieldCD > 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 037C0371
	/// @DnDParent : 664EEE64
	/// @DnDArgument : "expr" "-1/room_speed"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "shieldCD"
	shieldCD += -1/room_speed;}