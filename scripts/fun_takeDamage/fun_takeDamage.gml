/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 521A668F
/// @DnDInput : 2
/// @DnDArgument : "funcName" "fun_takeDamage"
/// @DnDArgument : "arg" "damage"
/// @DnDArgument : "arg_1" "target"
function fun_takeDamage(damage, target) {	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5955AA15
	/// @DnDParent : 521A668F
	/// @DnDArgument : "var" "d"
	/// @DnDArgument : "value" "damage + random_range(-3,3)"
	var d = damage + random_range(-3,3);

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 644B21FE
	/// @DnDParent : 521A668F
	/// @DnDArgument : "expr" "target.hitCD <= 0"
	if(target.hitCD <= 0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7403B408
		/// @DnDInput : 2
		/// @DnDParent : 644B21FE
		/// @DnDArgument : "expr_1" "5"
		/// @DnDArgument : "var" "target.hitCD"
		/// @DnDArgument : "var_1" "target.shieldCD"
		target.hitCD = 0;
		target.shieldCD = 5;
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 440A9F8B
		/// @DnDParent : 644B21FE
		/// @DnDArgument : "expr" "target.pShield > 0 && target.mShield > 0"
		if(target.pShield > 0 && target.mShield > 0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0C2A2E10
			/// @DnDParent : 440A9F8B
			/// @DnDArgument : "expr" "d > target.pShield ? 0 : target.pShield - d "
			/// @DnDArgument : "var" "target.pShield"
			target.pShield = d > target.pShield ? 0 : target.pShield - d ;}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 31BFF67C
		/// @DnDParent : 644B21FE
		else{	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 684C32B6
			/// @DnDParent : 31BFF67C
			/// @DnDArgument : "expr" "d > target.pHealth ? 0 : target.pHealth - d "
			/// @DnDArgument : "var" "target.pHealth"
			target.pHealth = d > target.pHealth ? 0 : target.pHealth - d ;}}}