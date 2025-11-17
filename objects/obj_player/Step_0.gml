/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 7A96920C
/// @DnDInput : 3
/// @DnDArgument : "var" "inputX"
/// @DnDArgument : "value" "gamepad.Connected ? gamepad.LX : (keyboard_check(ord("D")) - keyboard_check(ord("A")))"
/// @DnDArgument : "var_1" "inputY"
/// @DnDArgument : "value_1" "gamepad.Connected ? gamepad.LY : (keyboard_check(ord("S")) - keyboard_check(ord("W")))"
/// @DnDArgument : "var_2" "inputMag"
/// @DnDArgument : "value_2" "sqrt(inputX*inputX + inputY*inputY)"
var inputX = gamepad.Connected ? gamepad.LX : (keyboard_check(ord("D")) - keyboard_check(ord("A")));
var inputY = gamepad.Connected ? gamepad.LY : (keyboard_check(ord("S")) - keyboard_check(ord("W")));
var inputMag = sqrt(inputX*inputX + inputY*inputY);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4AAFC502
/// @DnDArgument : "expr" "obj_gun.maxMag"
/// @DnDArgument : "var" "mMag"
mMag = obj_gun.maxMag;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 1BBE5D33
/// @DnDArgument : "expr" "inputMag > 1"
if(inputMag > 1){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 49A35A61
	/// @DnDInput : 2
	/// @DnDParent : 1BBE5D33
	/// @DnDArgument : "expr" "inputX / inputMag"
	/// @DnDArgument : "expr_1" "inputY / inputMag"
	/// @DnDArgument : "var" "inputX"
	/// @DnDArgument : "var_1" "inputY"
	inputX = inputX / inputMag;
	inputY = inputY / inputMag;}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 1952253A
/// @DnDArgument : "expr" "abs(gamepad.RX) > 0.2 || abs(gamepad.RY) > 0.2"
if(abs(gamepad.RX) > 0.2 || abs(gamepad.RY) > 0.2){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 24A9FFE9
	/// @DnDParent : 1952253A
	/// @DnDArgument : "expr" "point_direction(0, 0, gamepad.RX, gamepad.RY)"
	/// @DnDArgument : "var" "aimDir"
	aimDir = point_direction(0, 0, gamepad.RX, gamepad.RY);}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 2FB30BB2
/// @DnDArgument : "expr" "gamepad.Connected"
/// @DnDArgument : "not" "1"
if(!(gamepad.Connected)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 70147799
	/// @DnDParent : 2FB30BB2
	/// @DnDArgument : "expr" "point_direction(x, y, mouse_x, mouse_y)"
	/// @DnDArgument : "var" "aimDir"
	aimDir = point_direction(x, y, mouse_x, mouse_y);}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 601518D8
/// @DnDArgument : "expr" "aimDir"
/// @DnDArgument : "var" "direction"
direction = aimDir;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4F8C8924
/// @DnDComment : So I can visually see the point direction
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "direction"
/// @DnDArgument : "var" "image_angle"


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3ED78EEA
/// @DnDInput : 2
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "inputX * moveSpd"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "expr_1" "inputY * moveSpd"
/// @DnDArgument : "expr_relative_1" "1"
/// @DnDArgument : "var" "x"
/// @DnDArgument : "var_1" "y"


/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 75685F58
/// @DnDComment : ==========================$(13_10)TILEMAP COLLISION CHECKING$(13_10)==========================
/// @DnDInput : 2
/// @DnDArgument : "var" "newX"
/// @DnDArgument : "value" "x + inputX * moveSpd"
/// @DnDArgument : "var_1" "newY"
/// @DnDArgument : "value_1" "y + inputY * moveSpd"
var newX = x + inputX * moveSpd;
var newY = y + inputY * moveSpd;

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 7A182F97
/// @DnDInput : 3
/// @DnDArgument : "funcName" "fun_tileSolid"
/// @DnDArgument : "arg" "_x"
/// @DnDArgument : "arg_1" "_y"
/// @DnDArgument : "arg_2" "_tm="Walls""
function fun_tileSolid(_x, _y, _tm="Walls") {	/// @DnDAction : YoYo Games.Common.Return
	/// @DnDVersion : 1
	/// @DnDHash : 1BC1F3A4
	/// @DnDParent : 7A182F97
	/// @DnDArgument : "value" "tilemap_get_at_pixel(_tm, _x, _y) > 0"
	return tilemap_get_at_pixel(_tm, _x, _y) > 0;}

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 484220E5
/// @DnDInput : 2
/// @DnDArgument : "var" "colW"
/// @DnDArgument : "value" "sprite_width * 0.5"
/// @DnDArgument : "var_1" "colH"
/// @DnDArgument : "value_1" "sprite_height * 0.5"
var colW = sprite_width * 0.5;
var colH = sprite_height * 0.5;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 7C3831C3
/// @DnDArgument : "expr" "fun_tileSolid(newX - colW, y - colH, tmCol) || fun_tileSolid(newX + colW, y - colH, tmCol) || fun_tileSolid(newX - colW, y + colH, tmCol) || fun_tileSolid(newX + colW, y + colH, tmCol)"
/// @DnDArgument : "not" "1"
if(!(fun_tileSolid(newX - colW, y - colH, tmCol) || fun_tileSolid(newX + colW, y - colH, tmCol) || fun_tileSolid(newX - colW, y + colH, tmCol) || fun_tileSolid(newX + colW, y + colH, tmCol))){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4F6756F1
	/// @DnDParent : 7C3831C3
	/// @DnDArgument : "expr" "newX"
	/// @DnDArgument : "var" "x"
	x = newX;}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 303B6BA0
/// @DnDArgument : "expr" "fun_tileSolid(x - colW, newY - colH, tmCol) || fun_tileSolid(x + colW, newY - colH, tmCol) || fun_tileSolid(x - colW, newY + colH, tmCol) || fun_tileSolid(x + colW, newY + colH, tmCol)"
/// @DnDArgument : "not" "1"
if(!(fun_tileSolid(x - colW, newY - colH, tmCol) || fun_tileSolid(x + colW, newY - colH, tmCol) || fun_tileSolid(x - colW, newY + colH, tmCol) || fun_tileSolid(x + colW, newY + colH, tmCol))){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 42B398B3
	/// @DnDParent : 303B6BA0
	/// @DnDArgument : "expr" "newY"
	/// @DnDArgument : "var" "y"
	y = newY;}