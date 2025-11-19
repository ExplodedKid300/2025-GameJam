/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 65BCD426
/// @DnDArgument : "code" "/// @description Card Pool$(13_10)global.cardPool = [$(13_10)    {$(13_10)        cid: 0$(13_10)		name: "Iron Body",$(13_10)        rarity: "Rare",$(13_10)        apply: function() { /* $(13_10)			+50% Health$(13_10)			-20% Movement Speed$(13_10)			*/ }$(13_10)    },$(13_10)    {$(13_10)        cid: 1$(13_10)		name: "Lucky Strike",$(13_10)        rarity: "Uncommon",$(13_10)        apply: function() { /* $(13_10)			+10% Crit Chance$(13_10)			*/ }$(13_10)    },$(13_10)    {$(13_10)        cid: 2$(13_10)		name: "One Shot Knockout",$(13_10)        rarity: "Cursed",$(13_10)        apply: function() { /* $(13_10)			+1000% Damage$(13_10)			-100% Spread$(13_10)			+10% Movement Speed$(13_10)			+10% Health$(13_10)			+10% Size$(13_10)			-99% Mag$(13_10)			*/ }$(13_10)    },$(13_10)    {$(13_10)        cid: 3$(13_10)		name: "Quick Hands",$(13_10)        rarity: "Basic",$(13_10)        apply: function() { /* $(13_10)			-25% Reload Speed$(13_10)			*/ }$(13_10)    },$(13_10)    {$(13_10)        cid: 4$(13_10)		name: "Rapid Fire",$(13_10)        rarity: "Epic",$(13_10)        apply: function() { /* $(13_10)			+30% Fire Rate$(13_10)			+10% Bullet Speed$(13_10)			+5% Reload Time$(13_10)			*/ }$(13_10)    },$(13_10)    {$(13_10)        cid: 5$(13_10)		name: "Chaos Chamber",$(13_10)        rarity: "Developer",$(13_10)        apply: function() { /* $(13_10)			Random Stat Shuffle every room$(13_10)			*/ }$(13_10)    },$(13_10)    {$(13_10)        cid: 6$(13_10)		name: "Pyro Shot",$(13_10)        rarity: "Rare",$(13_10)        apply: function() { /* $(13_10)			Bullets apply burn damage$(13_10)			*/ }$(13_10)    },$(13_10)    {$(13_10)        cid: 7$(13_10)		name: "Vampire Rounds",$(13_10)        rarity: "Uncommon",$(13_10)        apply: function() { /* $(13_10)			+10% Health Drain$(13_10)			*/ }$(13_10)    },$(13_10)    {$(13_10)        cid: 8$(13_10)		name: "Divine Blessing",$(13_10)        rarity: "Mystic",$(13_10)        apply: function() { /* $(13_10)			Removes all debuffs$(13_10)			Multiplies all bufs by this card count in possession$(13_10)			*/ }$(13_10)    }$(13_10)];$(13_10)"
/// @description Card Pool
global.cardPool = [
    {
        cid: 0
		name: "Iron Body",
        rarity: "Rare",
        apply: function() { /* 
			+50% Health
			-20% Movement Speed
			*/ }
    },
    {
        cid: 1
		name: "Lucky Strike",
        rarity: "Uncommon",
        apply: function() { /* 
			+10% Crit Chance
			*/ }
    },
    {
        cid: 2
		name: "One Shot Knockout",
        rarity: "Cursed",
        apply: function() { /* 
			+1000% Damage
			-100% Spread
			+10% Movement Speed
			+10% Health
			+10% Size
			-99% Mag
			*/ }
    },
    {
        cid: 3
		name: "Quick Hands",
        rarity: "Basic",
        apply: function() { /* 
			-25% Reload Speed
			*/ }
    },
    {
        cid: 4
		name: "Rapid Fire",
        rarity: "Epic",
        apply: function() { /* 
			+30% Fire Rate
			+10% Bullet Speed
			+5% Reload Time
			*/ }
    },
    {
        cid: 5
		name: "Chaos Chamber",
        rarity: "Developer",
        apply: function() { /* 
			Random Stat Shuffle every room
			*/ }
    },
    {
        cid: 6
		name: "Pyro Shot",
        rarity: "Rare",
        apply: function() { /* 
			Bullets apply burn damage
			*/ }
    },
    {
        cid: 7
		name: "Vampire Rounds",
        rarity: "Uncommon",
        apply: function() { /* 
			+10% Health Drain
			*/ }
    },
    {
        cid: 8
		name: "Divine Blessing",
        rarity: "Mystic",
        apply: function() { /* 
			Removes all debuffs
			Multiplies all bufs by this card count in possession
			*/ }
    }
];
/**/