/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 65BCD426
/// @DnDArgument : "code" "/// @description Card Pool$(13_10)global.cardPool = [$(13_10)    {$(13_10)		name: "Divine Blessing",$(13_10)        rarity: "Mystic",$(13_10)        apply: function() { /* $(13_10)			Removes all debuffs$(13_10)			Multiplies all bufs by this card count in possession$(13_10)			*/ }$(13_10)    },$(13_10)	{$(13_10)		name: "Sneakers",$(13_10)        rarity: "Common",$(13_10)        apply: function() { /* $(13_10)			+5% Movement Speed$(13_10)			*/ }$(13_10)    },$(13_10)	{$(13_10)		name: "Akimbo",$(13_10)        rarity: "Uncommon",$(13_10)        apply: function() { /* $(13_10)			+100% Max Mag$(13_10)			+100% Fire Rate$(13_10)			+80% Reload Time$(13_10)			*/ }$(13_10)    },$(13_10)	{$(13_10)		name: "Get down, sniper!",$(13_10)        rarity: "Rare",$(13_10)        apply: function() { /* $(13_10)			-15% Bullet Spread$(13_10)			Adds lazer sight$(13_10)			*/ }$(13_10)    },$(13_10)	{$(13_10)		name: "One Hit Knockout",$(13_10)        rarity: "Cursed",$(13_10)        apply: function() { /* $(13_10)			+1000% Bullet Damage$(13_10)			-100% Bullet Spread$(13_10)			+10% Movement Speed$(13_10)			+10% Max Health$(13_10)			+10% Player Size$(13_10)			-99% Max Mag$(13_10)			*/ }$(13_10)    },$(13_10)	{$(13_10)		name: "Shield Generator",$(13_10)        rarity: "Epic",$(13_10)        apply: function() { /* $(13_10)			+30% Max Shield$(13_10)			+5% Max Health$(13_10)			*/ }$(13_10)    }$(13_10)];$(13_10)"
/// @description Card Pool
global.cardPool = [
    {
		name: "Divine Blessing",
        rarity: "Mystic",
        apply: function() { /* 
			Removes all debuffs
			Multiplies all bufs by this card count in possession
			*/ }
    },
	{
		name: "Sneakers",
        rarity: "Common",
        apply: function() { /* 
			+5% Movement Speed
			*/ }
    },
	{
		name: "Akimbo",
        rarity: "Uncommon",
        apply: function() { /* 
			+100% Max Mag
			+100% Fire Rate
			+80% Reload Time
			*/ }
    },
	{
		name: "Get down, sniper!",
        rarity: "Rare",
        apply: function() { /* 
			-15% Bullet Spread
			Adds lazer sight
			*/ }
    },
	{
		name: "One Hit Knockout",
        rarity: "Cursed",
        apply: function() { /* 
			+1000% Bullet Damage
			-100% Bullet Spread
			+10% Movement Speed
			+10% Max Health
			+10% Player Size
			-99% Max Mag
			*/ }
    },
	{
		name: "Shield Generator",
        rarity: "Epic",
        apply: function() { /* 
			+30% Max Shield
			+5% Max Health
			*/ }
    }
];
/**/