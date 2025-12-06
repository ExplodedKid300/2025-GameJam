/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 38BB1A7A
/// @DnDInput : 2
/// @DnDArgument : "funcName" "fun_curReq"
/// @DnDArgument : "arg" "type"
/// @DnDArgument : "arg_1" "prio"
function fun_curReq(type, prio) {	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 4C740EC6
	/// @DnDParent : 38BB1A7A
	/// @DnDArgument : "expr" "point_in_rectangle(mouse_x, mouse_y, x - sprite_width/2, y - sprite_height/2, x + sprite_width/2, y + sprite_height/2)"
	if(point_in_rectangle(mouse_x, mouse_y, x - sprite_width/2, y - sprite_height/2, x + sprite_width/2, y + sprite_height/2)){	/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 4F9222C2
		/// @DnDParent : 4C740EC6
		/// @DnDArgument : "expr" "prio > obj_cursor.cursorPriority"
		if(prio > obj_cursor.cursorPriority){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2D1D4B7A
			/// @DnDInput : 2
			/// @DnDParent : 4F9222C2
			/// @DnDArgument : "expr" "type"
			/// @DnDArgument : "expr_1" "prio"
			/// @DnDArgument : "var" "obj_cursor.cursorID"
			/// @DnDArgument : "var_1" "obj_cursor.cursorPriority"
			obj_cursor.cursorID = type;
			obj_cursor.cursorPriority = prio;}}}