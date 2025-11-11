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