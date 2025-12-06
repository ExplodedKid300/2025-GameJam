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
	/// @DnDHash : 3140A786
	/// @DnDParent : 37EFAA26
	/// @DnDArgument : "var" "destroySelf"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "min" "1"
	/// @DnDArgument : "max" "100"
	var destroySelf = (random_range(1, 100));

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 486218C8
	/// @DnDParent : 37EFAA26
	/// @DnDArgument : "expr" "destroySelf < 95"
	if(destroySelf < 95){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 5EA59E40
		/// @DnDParent : 486218C8
		instance_destroy();}}