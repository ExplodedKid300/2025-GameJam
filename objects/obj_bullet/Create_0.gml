/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1FD9F516
/// @DnDInput : 2
/// @DnDArgument : "expr" "0.25"
/// @DnDArgument : "expr_1" "0.25"
/// @DnDArgument : "var" "image_xscale"
/// @DnDArgument : "var_1" "image_yscale"
image_xscale = 0.25;
image_yscale = 0.25;

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 21CD5294
/// @DnDInput : 3
/// @DnDArgument : "var" "_angle"
/// @DnDArgument : "value" "obj_gun.image_angle"
/// @DnDArgument : "var_1" "_spread"
/// @DnDArgument : "value_1" "obj_gun.bulletSpread / 2"
/// @DnDArgument : "var_2" "_speed"
/// @DnDArgument : "value_2" "obj_gun.projectileSpeed"
var _angle = obj_gun.image_angle;
var _spread = obj_gun.bulletSpread / 2;
var _speed = obj_gun.projectileSpeed;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4EE2F15C
/// @DnDInput : 3
/// @DnDArgument : "expr" "_angle + (random_range(-_spread, _spread))"
/// @DnDArgument : "expr_1" "direction"
/// @DnDArgument : "expr_2" "obj_gun.baseDamage"
/// @DnDArgument : "var" "direction"
/// @DnDArgument : "var_1" "image_angle"
/// @DnDArgument : "var_2" "dmg"
direction = _angle + (random_range(-_spread, _spread));
image_angle = direction;
dmg = obj_gun.baseDamage;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 234DBDBB
/// @DnDArgument : "speed" "_speed"
speed = _speed;