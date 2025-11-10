/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 17B4FF3E
/// @DnDComment : ==========$(13_10)Stats$(13_10)==========
/// @DnDArgument : "expr" "sHealth > pHealth"
if(sHealth > pHealth){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 23FA4B3E
	/// @DnDParent : 17B4FF3E
	/// @DnDArgument : "expr" "-0.08"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "sHealth"
	sHealth += -0.08;}

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
	/// @DnDArgument : "expr" "-0.08"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "sShield"
	sShield += -0.08;}

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