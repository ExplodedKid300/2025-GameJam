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
/// @DnDArgument : "expr" "direction"
/// @DnDArgument : "var" "image_angle"
image_angle = direction;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3ED78EEA
/// @DnDInput : 2
/// @DnDArgument : "expr" "inputX * moveSpd"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "expr_1" "inputY * moveSpd"
/// @DnDArgument : "expr_relative_1" "1"
/// @DnDArgument : "var" "x"
/// @DnDArgument : "var_1" "y"
x += inputX * moveSpd;
y += inputY * moveSpd;

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 75685F58
/// @DnDComment : ==========================$(13_10)TILEMAP COLLISION CHECKING$(13_10)==========================
/// @DnDInput : 2
/// @DnDArgument : "var" "newX"
/// @DnDArgument : "value" "x + moveX * finalSpd"
/// @DnDArgument : "var_1" "newY"
/// @DnDArgument : "value_1" "y + moveY * finalSpd"
var newX = x + moveX * finalSpd;
var newY = y + moveY * finalSpd;