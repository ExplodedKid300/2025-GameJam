/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 13FED56F
/// @DnDArgument : "expr" "gamepad_is_connected(0)"
if(gamepad_is_connected(0)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 39A760D4
	/// @DnDParent : 13FED56F
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "Connected"
	Connected = 1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3D9EACC7
	/// @DnDInput : 6
	/// @DnDParent : 13FED56F
	/// @DnDArgument : "expr" "gamepad_axis_value(0, gp_axislh)"
	/// @DnDArgument : "expr_1" "gamepad_axis_value(0, gp_axislv)"
	/// @DnDArgument : "expr_2" "gamepad_button_value(0, gp_shoulderlb)"
	/// @DnDArgument : "expr_3" "gamepad_axis_value(0, gp_axisrh)"
	/// @DnDArgument : "expr_4" "gamepad_axis_value(0, gp_axisrv)"
	/// @DnDArgument : "expr_5" "gamepad_button_value(0, gp_shoulderrb)"
	/// @DnDArgument : "var" "LX"
	/// @DnDArgument : "var_1" "LY"
	/// @DnDArgument : "var_2" "LT"
	/// @DnDArgument : "var_3" "RX"
	/// @DnDArgument : "var_4" "RY"
	/// @DnDArgument : "var_5" "RT"
	LX = gamepad_axis_value(0, gp_axislh);
	LY = gamepad_axis_value(0, gp_axislv);
	LT = gamepad_button_value(0, gp_shoulderlb);
	RX = gamepad_axis_value(0, gp_axisrh);
	RY = gamepad_axis_value(0, gp_axisrv);
	RT = gamepad_button_value(0, gp_shoulderrb);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3487F4BC
	/// @DnDInput : 14
	/// @DnDParent : 13FED56F
	/// @DnDArgument : "expr" "gamepad_button_check(0, gp_face1)"
	/// @DnDArgument : "expr_1" "gamepad_button_check(0, gp_face2)"
	/// @DnDArgument : "expr_2" "gamepad_button_check(0, gp_face3)"
	/// @DnDArgument : "expr_3" "gamepad_button_check(0, gp_face4)"
	/// @DnDArgument : "expr_4" "gamepad_button_check(0, gp_padu)"
	/// @DnDArgument : "expr_5" "gamepad_button_check(0, gp_padd)"
	/// @DnDArgument : "expr_6" "gamepad_button_check(0, gp_padl)"
	/// @DnDArgument : "expr_7" "gamepad_button_check(0, gp_padr)"
	/// @DnDArgument : "expr_8" "gamepad_button_check(0, gp_shoulderl)"
	/// @DnDArgument : "expr_9" "gamepad_button_check(0, gp_shoulderr)"
	/// @DnDArgument : "expr_10" "gamepad_button_check(0, gp_start)"
	/// @DnDArgument : "expr_11" "gamepad_button_check(0, gp_select)"
	/// @DnDArgument : "expr_12" "gamepad_button_check(0, gp_stickl)"
	/// @DnDArgument : "expr_13" "gamepad_button_check(0, gp_stickr)"
	/// @DnDArgument : "var" "A"
	/// @DnDArgument : "var_1" "B"
	/// @DnDArgument : "var_2" "X"
	/// @DnDArgument : "var_3" "Y"
	/// @DnDArgument : "var_4" "Up"
	/// @DnDArgument : "var_5" "Down"
	/// @DnDArgument : "var_6" "Left"
	/// @DnDArgument : "var_7" "Right"
	/// @DnDArgument : "var_8" "L"
	/// @DnDArgument : "var_9" "R"
	/// @DnDArgument : "var_10" "Start"
	/// @DnDArgument : "var_11" "Select"
	/// @DnDArgument : "var_12" "LS"
	/// @DnDArgument : "var_13" "RS"
	A = gamepad_button_check(0, gp_face1);
	B = gamepad_button_check(0, gp_face2);
	X = gamepad_button_check(0, gp_face3);
	Y = gamepad_button_check(0, gp_face4);
	Up = gamepad_button_check(0, gp_padu);
	Down = gamepad_button_check(0, gp_padd);
	Left = gamepad_button_check(0, gp_padl);
	Right = gamepad_button_check(0, gp_padr);
	L = gamepad_button_check(0, gp_shoulderl);
	R = gamepad_button_check(0, gp_shoulderr);
	Start = gamepad_button_check(0, gp_start);
	Select = gamepad_button_check(0, gp_select);
	LS = gamepad_button_check(0, gp_stickl);
	RS = gamepad_button_check(0, gp_stickr);}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 67EC4490
else{	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4B5FC845
	/// @DnDParent : 67EC4490
	/// @DnDArgument : "var" "Connected"
	Connected = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 76F69348
	/// @DnDInput : 6
	/// @DnDParent : 67EC4490
	/// @DnDArgument : "var" "LX"
	/// @DnDArgument : "var_1" "LY"
	/// @DnDArgument : "var_2" "LT"
	/// @DnDArgument : "var_3" "RX"
	/// @DnDArgument : "var_4" "RY"
	/// @DnDArgument : "var_5" "RT"
	LX = 0;
	LY = 0;
	LT = 0;
	RX = 0;
	RY = 0;
	RT = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0899DAAC
	/// @DnDInput : 14
	/// @DnDParent : 67EC4490
	/// @DnDArgument : "var" "A"
	/// @DnDArgument : "var_1" "B"
	/// @DnDArgument : "var_2" "X"
	/// @DnDArgument : "var_3" "Y"
	/// @DnDArgument : "var_4" "Up"
	/// @DnDArgument : "var_5" "Down"
	/// @DnDArgument : "var_6" "Left"
	/// @DnDArgument : "var_7" "Right"
	/// @DnDArgument : "var_8" "L"
	/// @DnDArgument : "var_9" "R"
	/// @DnDArgument : "var_10" "Start"
	/// @DnDArgument : "var_11" "Select"
	/// @DnDArgument : "var_12" "LS"
	/// @DnDArgument : "var_13" "RS"
	A = 0;
	B = 0;
	X = 0;
	Y = 0;
	Up = 0;
	Down = 0;
	Left = 0;
	Right = 0;
	L = 0;
	R = 0;
	Start = 0;
	Select = 0;
	LS = 0;
	RS = 0;}