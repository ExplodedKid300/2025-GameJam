/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 521A668F
/// @DnDArgument : "funcName" "fun_takeDamage"
/// @DnDArgument : "arg" "dmg"
function fun_takeDamage(dmg) {	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7403B408
	/// @DnDParent : 521A668F
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "other.hitCD"
	other.hitCD = 1;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 440A9F8B
	/// @DnDParent : 521A668F
	/// @DnDArgument : "expr" "other.pShield > 0"
	if(other.pShield > 0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0C2A2E10
		/// @DnDParent : 440A9F8B
		/// @DnDArgument : "expr" "dmg > other.pShield ? 0 : pShield - dmg "
		/// @DnDArgument : "var" "other.pShield"
		other.pShield = dmg > other.pShield ? 0 : pShield - dmg ;}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 31BFF67C
	/// @DnDParent : 521A668F
	else{	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 684C32B6
		/// @DnDParent : 31BFF67C
		/// @DnDArgument : "expr" "dmg > other.pHealth ? 0 : pHealth - dmg "
		/// @DnDArgument : "var" "other.pHealth"
		other.pHealth = dmg > other.pHealth ? 0 : pHealth - dmg ;}}