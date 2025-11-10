/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 41153F1D
/// @DnDArgument : "expr" "event_data[? "message"] == "SplashEnd""
if(event_data[? "message"] == "SplashEnd"){	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 44EBCDD4
	/// @DnDParent : 41153F1D
	/// @DnDArgument : "room" "Room1"
	/// @DnDSaveInfo : "room" "Room1"
	room_goto(Room1);}