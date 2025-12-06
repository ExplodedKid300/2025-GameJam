/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7397B4E0
/// @DnDInput : 3
/// @DnDArgument : "expr" "0.25"
/// @DnDArgument : "expr_1" "0.25"
/// @DnDArgument : "expr_2" "1"
/// @DnDArgument : "var" "image_xscale"
/// @DnDArgument : "var_1" "image_yscale"
/// @DnDArgument : "var_2" "image_index"
image_xscale = 0.25;
image_yscale = 0.25;
image_index = 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 439D53EB
/// @DnDArgument : "expr" "[1,2,3,4]"
/// @DnDArgument : "var" "cards"
cards = [1,2,3,4];

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 1E9AA086
/// @DnDArgument : "msg" "array_length(cards)"
show_debug_message(string(array_length(cards)));

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 738C0191
/// @DnDArgument : "var" "pGunID"
pGunID = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 12FB6A99
/// @DnDArgument : "expr" "layer_tilemap_get_id("Walls")"
/// @DnDArgument : "var" "tmCol"
tmCol = layer_tilemap_get_id("Walls");

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 026EA02F
/// @DnDInput : 3
/// @DnDArgument : "expr" "5"
/// @DnDArgument : "var" "moveSpd"
/// @DnDArgument : "var_1" "aimDir"
/// @DnDArgument : "var_2" "critChance"
moveSpd = 5;
aimDir = 0;
critChance = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 590E946D
/// @DnDInput : 13
/// @DnDArgument : "expr" "25"
/// @DnDArgument : "expr_1" "10"
/// @DnDArgument : "expr_2" "18"
/// @DnDArgument : "expr_3" "mHealth"
/// @DnDArgument : "expr_4" "mShield"
/// @DnDArgument : "expr_5" "mMag"
/// @DnDArgument : "expr_6" "mHealth"
/// @DnDArgument : "expr_7" "mShield"
/// @DnDArgument : "expr_8" "680"
/// @DnDArgument : "var" "mHealth"
/// @DnDArgument : "var_1" "mShield"
/// @DnDArgument : "var_2" "mMag"
/// @DnDArgument : "var_3" "pHealth"
/// @DnDArgument : "var_4" "pShield"
/// @DnDArgument : "var_5" "pMag"
/// @DnDArgument : "var_6" "sHealth"
/// @DnDArgument : "var_7" "sShield"
/// @DnDArgument : "var_8" "pRes"
/// @DnDArgument : "var_9" "hitCD"
/// @DnDArgument : "var_10" "isReloading"
/// @DnDArgument : "var_11" "reloadTimer"
/// @DnDArgument : "var_12" "shieldCD"
mHealth = 25;
mShield = 10;
mMag = 18;
pHealth = mHealth;
pShield = mShield;
pMag = mMag;
sHealth = mHealth;
sShield = mShield;
pRes = 680;
hitCD = 0;
isReloading = 0;
reloadTimer = 0;
shieldCD = 0;