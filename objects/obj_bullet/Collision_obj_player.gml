/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 37EFAA26
/// @DnDArgument : "expr" "other != source"
if(other != source){	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 62DBAE54
	/// @DnDInput : 2
	/// @DnDParent : 37EFAA26
	/// @DnDArgument : "function" "fun_takeDamage"
	/// @DnDArgument : "arg" "dmg"
	/// @DnDArgument : "arg_1" "other"
	fun_takeDamage(dmg, other);

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 4EE31945
	/// @DnDParent : 37EFAA26
	/// @DnDArgument : "var" "destroySelf"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "min" "1"
	/// @DnDArgument : "max" "100"
	var destroySelf = floor(random_range(1, 100 + 1));

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 16E02788
	/// @DnDParent : 37EFAA26
	/// @DnDArgument : "expr" "destroySelf >= 95"
	if(destroySelf >= 95){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 666BCE73
		/// @DnDParent : 16E02788
		instance_destroy();}}