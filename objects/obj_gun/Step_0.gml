/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 71E9139A
/// @DnDArgument : "expr" "shootCD > 0"
if(shootCD > 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3F7C2B68
	/// @DnDParent : 71E9139A
	/// @DnDArgument : "expr" "-1/room_speed"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "shootCD"
	shootCD += -1/room_speed;}

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 2996AE7C
/// @DnDArgument : "var" "gID"
/// @DnDArgument : "value" "obj_player.pGunID"
var gID = obj_player.pGunID;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3C4786EA
/// @DnDArgument : "expr" "gID"
/// @DnDArgument : "var" "image_index"
image_index = gID;

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 5EB17889
/// @DnDArgument : "var" "gList"
/// @DnDArgument : "value" "["Pistol", "AR", "SMG"]"
var gList = ["Pistol", "AR", "SMG"];

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 38308C91
/// @DnDDisabled : 1
/// @DnDArgument : "msg" "gList[gID]"


/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 63F090D6
/// @DnDArgument : "expr" "gList[gID]"
var l63F090D6_0 = gList[gID];switch(l63F090D6_0){	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 0CE73885
	/// @DnDParent : 63F090D6
	/// @DnDArgument : "const" ""Pistol""
	case "Pistol":	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 715DD524
		/// @DnDInput : 7
		/// @DnDParent : 0CE73885
		/// @DnDArgument : "expr" "10"
		/// @DnDArgument : "expr_1" "[1,0,0]"
		/// @DnDArgument : "expr_2" "15"
		/// @DnDArgument : "expr_3" "10"
		/// @DnDArgument : "expr_4" "5"
		/// @DnDArgument : "expr_5" "18"
		/// @DnDArgument : "expr_6" "3"
		/// @DnDArgument : "var" "fireRate"
		/// @DnDArgument : "var_1" "modeSupport"
		/// @DnDArgument : "var_2" "projectileSpeed"
		/// @DnDArgument : "var_3" "baseDamage"
		/// @DnDArgument : "var_4" "bulletSpread"
		/// @DnDArgument : "var_5" "maxMag"
		/// @DnDArgument : "var_6" "reloadTime"
		fireRate = 10;
		modeSupport = [1,0,0];
		projectileSpeed = 15;
		baseDamage = 10;
		bulletSpread = 5;
		maxMag = 18;
		reloadTime = 3;	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 25D86BF4
	/// @DnDParent : 63F090D6
	/// @DnDArgument : "const" ""AR""
	case "AR":	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 296AEAB8
		/// @DnDInput : 7
		/// @DnDParent : 25D86BF4
		/// @DnDArgument : "expr" "12"
		/// @DnDArgument : "expr_1" "[1,3,1]"
		/// @DnDArgument : "expr_2" "17"
		/// @DnDArgument : "expr_3" "8"
		/// @DnDArgument : "expr_4" "7"
		/// @DnDArgument : "expr_5" "26"
		/// @DnDArgument : "expr_6" "5"
		/// @DnDArgument : "var" "fireRate"
		/// @DnDArgument : "var_1" "modeSupport"
		/// @DnDArgument : "var_2" "projectileSpeed"
		/// @DnDArgument : "var_3" "baseDamage"
		/// @DnDArgument : "var_4" "bulletSpread"
		/// @DnDArgument : "var_5" "maxMag"
		/// @DnDArgument : "var_6" "reloadTime"
		fireRate = 12;
		modeSupport = [1,3,1];
		projectileSpeed = 17;
		baseDamage = 8;
		bulletSpread = 7;
		maxMag = 26;
		reloadTime = 5;	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 14E94CA0
	/// @DnDParent : 63F090D6
	/// @DnDArgument : "const" ""SMG""
	case "SMG":	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 45F03B5E
		/// @DnDInput : 7
		/// @DnDParent : 14E94CA0
		/// @DnDArgument : "expr" "15"
		/// @DnDArgument : "expr_1" "[1,5,1]"
		/// @DnDArgument : "expr_2" "19"
		/// @DnDArgument : "expr_3" "6"
		/// @DnDArgument : "expr_4" "9"
		/// @DnDArgument : "expr_5" "31"
		/// @DnDArgument : "expr_6" "4"
		/// @DnDArgument : "var" "fireRate"
		/// @DnDArgument : "var_1" "modeSupport"
		/// @DnDArgument : "var_2" "projectileSpeed"
		/// @DnDArgument : "var_3" "baseDamage"
		/// @DnDArgument : "var_4" "bulletSpread"
		/// @DnDArgument : "var_5" "maxMag"
		/// @DnDArgument : "var_6" "reloadTime"
		fireRate = 15;
		modeSupport = [1,5,1];
		projectileSpeed = 19;
		baseDamage = 6;
		bulletSpread = 9;
		maxMag = 31;
		reloadTime = 4;	break;}