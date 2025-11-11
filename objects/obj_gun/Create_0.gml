/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 22CAE370
/// @DnDArgument : "code" "/*$(13_10)  fireRate = Bullets Shot per Second$(13_10)$(13_10)  modeSupport = [singleBool, burstBool/amount, autoBool]$(13_10)  Ex: Pistol.modeSupport = [1,0,0] (Single shot, no burst or auto),$(13_10)      AR.modeSupport = [1,3,1] (Single and auto, 3 bullet bursts)$(13_10)	  SMG.modeSupport = [1,5,1] (Single and auto, 5 bullet bursts)$(13_10)	  $(13_10)  burstSize is handled in the modeSupport array (since any non-zero is true, right?)$(13_10)  $(13_10)  burstInterval = delay between burst, will be 3*fireRate$(13_10)  $(13_10)  projectileSpeed = Speed of the bullets$(13_10)  $(13_10)  baseDamage = Bullet Damage$(13_10)  $(13_10)  bulletSpread = innacuracy of the bullets in degrees, will double as bullet spread if I add shotguns to the game$(13_10)  Ex: bulletSpread = 5 means the bullets will shoot from angles ranging from -2.5 to 2.5$(13_10)*/"
/*
  fireRate = Bullets Shot per Second

  modeSupport = [singleBool, burstBool/amount, autoBool]
  Ex: Pistol.modeSupport = [1,0,0] (Single shot, no burst or auto),
      AR.modeSupport = [1,3,1] (Single and auto, 3 bullet bursts)
	  SMG.modeSupport = [1,5,1] (Single and auto, 5 bullet bursts)
	  
  burstSize is handled in the modeSupport array (since any non-zero is true, right?)
  
  burstInterval = delay between burst, will be 3*fireRate
  
  projectileSpeed = Speed of the bullets
  
  baseDamage = Bullet Damage
  
  bulletSpread = innacuracy of the bullets in degrees, will double as bullet spread if I add shotguns to the game
  Ex: bulletSpread = 5 means the bullets will shoot from angles ranging from -2.5 to 2.5
*//**/

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 585FAD8A
/// @DnDInput : 9
/// @DnDArgument : "expr_1" "[1,0,0]"
/// @DnDArgument : "expr_2" "modeSupport[1]"
/// @DnDArgument : "expr_3" "3*fireRate"
/// @DnDArgument : "var" "fireRate"
/// @DnDArgument : "var_1" "modeSupport"
/// @DnDArgument : "var_2" "burstSize"
/// @DnDArgument : "var_3" "burstInterval"
/// @DnDArgument : "var_4" "projectileSpeed"
/// @DnDArgument : "var_5" "baseDamage"
/// @DnDArgument : "var_6" "bulletSpread"
/// @DnDArgument : "var_7" "maxMag"
/// @DnDArgument : "var_8" "shootCD"
fireRate = 0;
modeSupport = [1,0,0];
burstSize = modeSupport[1];
burstInterval = 3*fireRate;
projectileSpeed = 0;
baseDamage = 0;
bulletSpread = 0;
maxMag = 0;
shootCD = 0;