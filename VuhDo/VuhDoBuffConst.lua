--
VUHDO_BUFF_REMOVAL_SPELLS = {
	[VUHDO_SPELL_ID_SPELLSTEAL] = true,
	[VUHDO_SPELL_ID_PURGE] = true,
	[VUHDO_SPELL_ID_DISPEL_MAGIC] = true,
	[VUHDO_SPELL_ID_CLEANSE_SPIRIT] = true,
	[VUHDO_SPELL_ID_CYCLONE] = true,
}


-- Definition of buff impact types
VUHDO_BUFF_TARGET_SELF = 1;
VUHDO_BUFF_TARGET_SINGLE = 2;
VUHDO_BUFF_TARGET_UNIQUE = 3;
VUHDO_BUFF_TARGET_OWN_GROUP = 4;
--VUHDO_BUFF_TARGET_GROUP = 5;
VUHDO_BUFF_TARGET_CLASS = 6;
VUHDO_BUFF_TARGET_TOTEM = 7;
VUHDO_BUFF_TARGET_AURA = 8;
VUHDO_BUFF_TARGET_HOSTILE = 9;
VUHDO_BUFF_TARGET_RAID = 10;
VUHDO_BUFF_TARGET_ENCHANT = 11;
VUHDO_BUFF_TARGET_ENCHANT_2 = 12;


--
VUHDO_GROUPS_BUFFS = {
	[VUHDO_BUFF_TARGET_OWN_GROUP] = true,
	--[VUHDO_BUFF_TARGET_GROUP] = true,
	[VUHDO_BUFF_TARGET_CLASS] = true,
	[VUHDO_BUFF_TARGET_TOTEM] = true,
	[VUHDO_BUFF_TARGET_AURA] = true,
	[VUHDO_BUFF_TARGET_RAID] = true,
};



--
-- Buffs per Class
-- Class => BUff-disjunctive-Group => Buff-Overwriting-Group => BuffName, Target type
--
VUHDO_CLASS_BUFFS = {
	-- Priest
	["PRIEST"] = {
		[VUHDO_I18N_BUFFC_FORTITUDE] = { -- 01
			{
				{ VUHDO_SPELL_ID_BUFF_POWER_WORD_FORTITUDE, VUHDO_BUFF_TARGET_SINGLE },
				{ VUHDO_SPELL_ID_BUFF_PRAYER_OF_FORTITUDE, VUHDO_BUFF_TARGET_RAID },
			}
		},
		[VUHDO_I18N_BUFFC_SPIRIT] = { -- 02
			{
				{ VUHDO_SPELL_ID_BUFF_DIVINE_SPIRIT, VUHDO_BUFF_TARGET_SINGLE },
				{ VUHDO_SPELL_ID_BUFF_PRAYER_OF_SPIRIT, VUHDO_BUFF_TARGET_RAID },
			}
		},
		[VUHDO_I18N_BUFFC_SHADOW_PROTECTION] = { -- 03
			{
				{ VUHDO_SPELL_ID_BUFF_SHADOW_PROTECTION, VUHDO_BUFF_TARGET_SINGLE },
				{ VUHDO_SPELL_ID_BUFF_PRAYER_OF_SHADOW_PROTECTION, VUHDO_BUFF_TARGET_RAID },
			}
		},
		[VUHDO_SPELL_ID_BUFFC_FEAR_WARD] = { -- 04
			{
				{ VUHDO_SPELL_ID_BUFF_FEAR_WARD, VUHDO_BUFF_TARGET_UNIQUE },
			}
		},
		[VUHDO_SPELL_ID_BUFFC_INNER_FIRE] = { -- 05
			{
				{ VUHDO_SPELL_ID_BUFF_INNER_FIRE, VUHDO_BUFF_TARGET_SELF },
			}
		},
		[VUHDO_SPELL_ID_BUFFC_SHADOW_FIEND] = { -- 06
			{
				{ VUHDO_SPELL_ID_BUFF_SHADOWFIEND, VUHDO_BUFF_TARGET_HOSTILE },
			}
		},
		[VUHDO_SPELL_ID_BUFFC_POWER_INFUSION] = { -- 07
			{
				{ VUHDO_SPELL_ID_BUFF_POWER_INFUSION, VUHDO_BUFF_TARGET_UNIQUE },
			}
		},
		[VUHDO_SPELL_ID_BUFFC_VAMPIRIC_EMBRACE] = { -- 08
			{
				{ VUHDO_SPELL_ID_BUFF_VAMPIRIC_EMBRACE, VUHDO_BUFF_TARGET_SELF },
			}
		},
		[VUHDO_SPELL_ID_BUFFC_LEVITATE] = { -- 09
			{
				{ VUHDO_SPELL_ID_BUFF_LEVITATE, VUHDO_BUFF_TARGET_SINGLE },
			}
		},
		[VUHDO_SPELL_ID_BUFFC_PAIN_SUPPRESSION] = { -- 10
			{
				{ VUHDO_SPELL_ID_PAIN_SUPPRESSION, VUHDO_BUFF_TARGET_UNIQUE },
			}
		},
	},

	-- Shaman
	["SHAMAN"] = {
		[VUHDO_I18N_BUFFC_FIRE_TOTEM] = { -- 01
			{
				{ VUHDO_SPELL_ID_BUFF_FLAMETONGUE_TOTEM, VUHDO_BUFF_TARGET_TOTEM },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_SEARING_TOTEM, VUHDO_BUFF_TARGET_TOTEM },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_FIRE_ELEMENTAL_TOTEM, VUHDO_BUFF_TARGET_TOTEM },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_FROST_RESISTANCE_TOTEM, VUHDO_BUFF_TARGET_TOTEM },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_MAGMA_TOTEM, VUHDO_BUFF_TARGET_TOTEM },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_TOTEM_OF_WRATH, VUHDO_BUFF_TARGET_TOTEM },
			},
		},
		[VUHDO_I18N_BUFFC_AIR_TOTEM] = { -- 02
			{
				{ VUHDO_SPELL_ID_BUFF_GROUNDING_TOTEM, VUHDO_BUFF_TARGET_TOTEM },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_NATURE_RESISTANCE_TOTEM, VUHDO_BUFF_TARGET_TOTEM },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_WINDFURY_TOTEM, VUHDO_BUFF_TARGET_TOTEM },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_WRATH_OF_AIR_TOTEM, VUHDO_BUFF_TARGET_TOTEM },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_SENTRY_TOTEM, VUHDO_BUFF_TARGET_TOTEM },
			},
		},
		[VUHDO_I18N_BUFFC_EARTH_TOTEM] = { -- 03
			{
				{VUHDO_SPELL_ID_BUFF_EARTHBIND_TOTEM, VUHDO_BUFF_TARGET_TOTEM },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_STRENGTH_OF_EARTH_TOTEM, VUHDO_BUFF_TARGET_TOTEM },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_STONESKIN_TOTEM, VUHDO_BUFF_TARGET_TOTEM },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_STONECLAW_TOTEM, VUHDO_BUFF_TARGET_TOTEM },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_EARTH_ELEMENTAL_TOTEM, VUHDO_BUFF_TARGET_TOTEM },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_TREMOR_TOTEM, VUHDO_BUFF_TARGET_TOTEM },
			},
		},
		[VUHDO_I18N_BUFFC_WATER_TOTEM] = { -- 04
			{
				{ VUHDO_SPELL_ID_BUFF_CLEANSING_TOTEM, VUHDO_BUFF_TARGET_TOTEM },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_MANA_SPRING_TOTEM, VUHDO_BUFF_TARGET_TOTEM },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_FIRE_RESISTANCE_TOTEM, VUHDO_BUFF_TARGET_TOTEM },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_HEALING_STREAM_TOTEM, VUHDO_BUFF_TARGET_TOTEM },
			},
		},
		[VUHDO_SPELL_ID_BUFFC_MANA_TIDE_TOTEM] = { -- 05
			{
				{ VUHDO_SPELL_ID_BUFF_MANA_TIDE_TOTEM, VUHDO_BUFF_TARGET_TOTEM },
			},
		},
		[VUHDO_SPELL_ID_BUFFC_HEROISM] = { -- 06
			{
				{ VUHDO_SPELL_ID_BUFF_HEROISM, VUHDO_BUFF_TARGET_OWN_GROUP },
			},
		},
		[VUHDO_SPELL_ID_BUFFC_BLOODLUST] = { -- 07
			{
				{ VUHDO_SPELL_ID_BUFF_BLOODLUST, VUHDO_BUFF_TARGET_OWN_GROUP },
			},
		},
		[VUHDO_SPELL_ID_BUFFC_EARTH_SHIELD] ={ -- 08
			{
				{ VUHDO_SPELL_ID_BUFF_EARTH_SHIELD, VUHDO_BUFF_TARGET_UNIQUE },
			},
		},
		[VUHDO_I18N_BUFFC_WEAPON_ENCHANT] = { -- 09
			{
				{ VUHDO_SPELL_ID_BUFF_ROCKBITER_WEAPON,  VUHDO_BUFF_TARGET_ENCHANT },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_FLAMETONGUE_WEAPON, VUHDO_BUFF_TARGET_ENCHANT },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_FROSTBRAND_WEAPON,  VUHDO_BUFF_TARGET_ENCHANT },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_WINDFURY_WEAPON,  VUHDO_BUFF_TARGET_ENCHANT },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_EARTHLIVING_WEAPON,  VUHDO_BUFF_TARGET_ENCHANT },
			},
		},
		[VUHDO_I18N_BUFFC_SHIELDS] = { -- 10
			{
				{ VUHDO_SPELL_ID_BUFF_LIGHTNING_SHIELD, VUHDO_BUFF_TARGET_SELF },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_WATER_SHIELD,  VUHDO_BUFF_TARGET_SELF },
			},
		},
		[VUHDO_SPELL_ID_BUFFC_TIDAL_FORCE] = { -- 11
			{
				{ VUHDO_SPELL_ID_BUFF_TIDAL_FORCE, VUHDO_BUFF_TARGET_SELF },
			},
		},
		[VUHDO_SPELL_ID_BUFFC_NATURES_SWIFTNESS] = { -- 12
			{
				{ VUHDO_SPELL_ID_BUFF_NATURES_SWIFTNESS, VUHDO_BUFF_TARGET_SELF },
			},
		},
--		[VUHDO_I18N_BUFFC_WEAPON_ENCHANT_2] = { -- 13
--			{
--				{ VUHDO_SPELL_ID_BUFF_ROCKBITER_WEAPON,  VUHDO_BUFF_TARGET_ENCHANT },
--			},
--			{
--				{ VUHDO_SPELL_ID_BUFF_FLAMETONGUE_WEAPON, VUHDO_BUFF_TARGET_ENCHANT },
--			},
--			{
--				{ VUHDO_SPELL_ID_BUFF_FROSTBRAND_WEAPON,  VUHDO_BUFF_TARGET_ENCHANT },
--			},
--			{
--				{ VUHDO_SPELL_ID_BUFF_WINDFURY_WEAPON,  VUHDO_BUFF_TARGET_ENCHANT },
--			},
--			{
--				{ VUHDO_SPELL_ID_BUFF_EARTHLIVING_WEAPON,  VUHDO_BUFF_TARGET_ENCHANT },
--			},
--		},
	},

	["PALADIN"] = {
		[VUHDO_I18N_BUFFC_BLESSING] = {
			{
				{ VUHDO_SPELL_ID_BUFF_BLESSING_OF_MIGHT, VUHDO_BUFF_TARGET_SINGLE },
				{ VUHDO_SPELL_ID_BUFF_GREATER_BLESSING_OF_MIGHT, VUHDO_BUFF_TARGET_CLASS },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_BLESSING_OF_WISDOM, VUHDO_BUFF_TARGET_SINGLE },
				{ VUHDO_SPELL_ID_BUFF_GREATER_BLESSING_OF_WISDOM, VUHDO_BUFF_TARGET_CLASS },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_BLESSING_OF_SANCTUARY, VUHDO_BUFF_TARGET_SINGLE },
				{ VUHDO_SPELL_ID_BUFF_GREATER_BLESSING_OF_SANCTUARY, VUHDO_BUFF_TARGET_CLASS  },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_BLESSING_OF_THE_KINGS, VUHDO_BUFF_TARGET_SINGLE },
				{ VUHDO_SPELL_ID_BUFF_GREATER_BLESSING_OF_THE_KINGS, VUHDO_BUFF_TARGET_CLASS },
			},
		},
		[VUHDO_I18N_BUFFC_AURA] = {
			{
				{ VUHDO_SPELL_ID_BUFF_DEVOTION_AURA, VUHDO_BUFF_TARGET_AURA },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_RETRIBUTION_AURA, VUHDO_BUFF_TARGET_AURA },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_CONCENTRATION_AURA, VUHDO_BUFF_TARGET_AURA },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_SHADOW_RESISTANCE_AURA, VUHDO_BUFF_TARGET_AURA },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_FROST_RESISTANCE_AURA, VUHDO_BUFF_TARGET_AURA },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_FIRE_RESISTANCE_AURA, VUHDO_BUFF_TARGET_AURA },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_CRUSADER_AURA, VUHDO_BUFF_TARGET_AURA },
			},
		},
		[VUHDO_I18N_BUFFC_SEAL] = {
			{
				{ VUHDO_SPELL_ID_BUFF_SEAL_OF_RIGHTEOUSNESS, VUHDO_BUFF_TARGET_SELF },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_SEAL_OF_BLOOD, VUHDO_BUFF_TARGET_SELF },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_SEAL_OF_CORRUPTION, VUHDO_BUFF_TARGET_SELF },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_SEAL_OF_MARTYR, VUHDO_BUFF_TARGET_SELF },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_SEAL_OF_VENGEANCE, VUHDO_BUFF_TARGET_SELF },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_SEAL_OF_JUSTICE, VUHDO_BUFF_TARGET_SELF },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_SEAL_OF_LIGHT, VUHDO_BUFF_TARGET_SELF },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_SEAL_OF_WISDOM, VUHDO_BUFF_TARGET_SELF },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_SEAL_OF_COMMAND, VUHDO_BUFF_TARGET_SELF },
			},
		},
		[VUHDO_SPELL_ID_BUFFC_BEACON_OF_LIGHT] = {
			{
				{ VUHDO_SPELL_ID_BUFF_BEACON_OF_LIGHT, VUHDO_BUFF_TARGET_UNIQUE },
			},
		},
		[VUHDO_SPELL_ID_BUFFC_RIGHTEOUS_FURY] = {
			{
				{ VUHDO_SPELL_ID_BUFF_RIGHTEOUS_FURY, VUHDO_BUFF_TARGET_SELF },
			},
		},
		[VUHDO_SPELL_ID_BUFFC_SACRED_SHIELD] = {
			{
				{ VUHDO_SPELL_ID_SACRED_SHIELD, VUHDO_BUFF_TARGET_UNIQUE },
			},
		}
	},

	["DRUID"] = {
		[VUHDO_SPELL_ID_BUFFC_GIFT_OF_THE_WILD] = {
			{
				{ VUHDO_SPELL_ID_BUFF_MARK_OF_THE_WILD, VUHDO_BUFF_TARGET_SINGLE },
				{ VUHDO_SPELL_ID_BUFF_GIFT_OF_THE_WILD, VUHDO_BUFF_TARGET_RAID },
			},
		},
		[VUHDO_SPELL_ID_BUFFC_THORNS] = {
			{
				{ VUHDO_SPELL_ID_BUFF_THORNS, VUHDO_BUFF_TARGET_SINGLE },
			},
		},
	},

	["WARLOCK"] = {
		[VUHDO_I18N_BUFFC_SKIN] = {
			{
				{ VUHDO_SPELL_ID_BUFF_DEMON_SKIN, VUHDO_BUFF_TARGET_SELF },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_DEMON_ARMOR, VUHDO_BUFF_TARGET_SELF },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_FEL_ARMOR, VUHDO_BUFF_TARGET_SELF },
			},
		},
		[VUHDO_SPELL_ID_BUFFC_DETECT_INVISIBILITY] = {
			{
				{ VUHDO_SPELL_ID_BUFF_DETECT_INVISIBILITY, VUHDO_BUFF_TARGET_SINGLE },
			},
		},
	},

	["MAGE"] = {
		[VUHDO_SPELL_ID_BUFFC_ARCANE_BRILLIANCE] = { -- 1
			{
				{ VUHDO_SPELL_ID_BUFF_ARCANE_INTELLECT, VUHDO_BUFF_TARGET_SINGLE, VUHDO_SPELL_ID_BUFF_DALARAN_INTELLECT },
				{ VUHDO_SPELL_ID_BUFF_ARCANE_BRILLIANCE, VUHDO_BUFF_TARGET_RAID, VUHDO_SPELL_ID_BUFF_DALARAN_BRILLIANCE },
			},
		},
		[VUHDO_SPELL_ID_BUFFC_ICE_BLOCK] = { -- 2
			{
				{ VUHDO_SPELL_ID_BUFF_ICE_BLOCK, VUHDO_BUFF_TARGET_SELF },
			},
		},
		[VUHDO_I18N_BUFFC_ARMOR_MAGE] = { -- 3
			{
				{ VUHDO_SPELL_ID_BUFF_FROST_ARMOR, VUHDO_BUFF_TARGET_SELF },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_MOLTEN_ARMOR, VUHDO_BUFF_TARGET_SELF },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_ICE_ARMOR, VUHDO_BUFF_TARGET_SELF },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_MAGE_ARMOR, VUHDO_BUFF_TARGET_SELF },
			},
		},
		[VUHDO_SPELL_ID_BUFFC_FOCUS_MAGIC] = { -- 4
			{
				{ VUHDO_SPELL_ID_BUFF_FOCUS_MAGIC, VUHDO_BUFF_TARGET_UNIQUE },
			},
		},
		[VUHDO_SPELL_ID_BUFFC_COMBUSTION] = { -- 5
			{
				{ VUHDO_SPELL_ID_BUFF_COMBUSTION, VUHDO_BUFF_TARGET_SELF },
			},
		},
		[VUHDO_SPELL_ID_BUFFC_AMPLIFY_MAGIC] = { -- 6
			{
				{ VUHDO_SPELL_ID_BUFF_AMPLIFY_MAGIC, VUHDO_BUFF_TARGET_SINGLE },
			},
		},
		[VUHDO_SPELL_ID_BUFFC_DAMPEN_MAGIC] = { -- 7
			{
				{ VUHDO_SPELL_ID_BUFF_DAMPEN_MAGIC, VUHDO_BUFF_TARGET_SINGLE },
			},
		},
		[VUHDO_SPELL_ID_BUFFC_SLOW_FALL] = { -- 8
			{
				{ VUHDO_SPELL_ID_BUFF_SLOW_FALL, VUHDO_BUFF_TARGET_SINGLE },
			},
		},
	},

	-- Death Knight
	["DEATHKNIGHT"] = {
		[VUHDO_SPELL_ID_BUFFC_HORN_OF_WINTER] = {
			{
				{VUHDO_SPELL_ID_BUFF_HORN_OF_WINTER , VUHDO_BUFF_TARGET_SELF },
			}
		},
		[VUHDO_SPELL_ID_BUFFC_BONE_SHIELD] = {
			{
				{ VUHDO_SPELL_ID_BUFF_BONE_SHIELD, VUHDO_BUFF_TARGET_SELF },
			}
		},
		[VUHDO_SPELL_ID_BUFFC_PRESENCE] = {
			{
				{ VUHDO_SPELL_ID_BUFF_BLOOD_PRESENCE, VUHDO_BUFF_TARGET_SELF },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_FROST_PRESENCE, VUHDO_BUFF_TARGET_SELF },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_UNHOLY_PRESENCE, VUHDO_BUFF_TARGET_SELF },
			},
		},
	},

	-- Warrior
	["WARRIOR"] = {
		[VUHDO_I18N_BUFFC_SHOUT] = {
			{
				{ VUHDO_SPELL_ID_BUFF_BATTLE_SHOUT, VUHDO_BUFF_TARGET_SELF },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_COMMANDING_SHOUT, VUHDO_BUFF_TARGET_SELF },
			},
		},
		[VUHDO_SPELL_ID_BUFFC_VIGILANCE] = {
			{
				{ VUHDO_SPELL_ID_BUFF_VIGILANCE, VUHDO_BUFF_TARGET_UNIQUE },
			},
		},
	},

	-- Hunter
	["HUNTER"] = {
		[VUHDO_SPELL_ID_BUFFC_TRUESHOT_AURA] = {
			{
				{ VUHDO_SPELL_ID_BUFF_TRUESHOT_AURA, VUHDO_BUFF_TARGET_SELF },
			},
		},
		[VUHDO_I18N_BUFFC_ASPECT] = {
			{
				{ VUHDO_SPELL_ID_BUFF_ASPECT_OF_THE_BEAST, VUHDO_BUFF_TARGET_SELF },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_ASPECT_OF_THE_DRAGONHAWK, VUHDO_BUFF_TARGET_SELF },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_ASPECT_OF_THE_HAWK, VUHDO_BUFF_TARGET_SELF },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_ASPECT_OF_THE_MONKEY, VUHDO_BUFF_TARGET_SELF },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_ASPECT_OF_THE_PACK, VUHDO_BUFF_TARGET_SELF },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_ASPECT_OF_THE_VIPER, VUHDO_BUFF_TARGET_SELF },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_ASPECT_OF_THE_WILD, VUHDO_BUFF_TARGET_SELF },
			},
		},
	},
};



VUHDO_CAST_ICON_DIFF = {
	[VUHDO_SPELL_ID_BUFF_EARTHLIVING_WEAPON] = "Interface\\Icons\\Spell_Shaman_GiftEarthmother",
	--[VUHDO_SPELL_ID_ANCESTRAL_HEALING] = "Interface\\Icons\\Spell_Shaman_GiftEarthmother",
	[VUHDO_SPELL_ID_SACRED_SHIELD] = "*",
	["OTHER"] = "Interface\\Icons\\achievement_bg_tophealer_soa",
};



VUHDO_BUFF_FILTER_COMBO_TABLE = {
	{ VUHDO_ID_ALL, VUHDO_I18N_BUFF_ALL },

	{ VUHDO_ID_MAINTANKS, VUHDO_HEADER_TEXTS[VUHDO_ID_MAINTANKS] },
	{ VUHDO_ID_MAIN_ASSISTS, VUHDO_HEADER_TEXTS[VUHDO_ID_MAIN_ASSISTS] },
	{ VUHDO_ID_PRIVATE_TANKS, VUHDO_HEADER_TEXTS[VUHDO_ID_PRIVATE_TANKS] },
	{ VUHDO_ID_SELF, VUHDO_HEADER_TEXTS[VUHDO_ID_SELF] },

	{ VUHDO_ID_GROUP_OWN, VUHDO_I18N_OWN_GROUP_LONG },

	{ VUHDO_ID_MELEE_TANK, VUHDO_HEADER_TEXTS[VUHDO_ID_MELEE_TANK] },
	{ VUHDO_ID_MELEE_DAMAGE, VUHDO_HEADER_TEXTS[VUHDO_ID_MELEE_DAMAGE] },
	{ VUHDO_ID_RANGED_DAMAGE, VUHDO_HEADER_TEXTS[VUHDO_ID_RANGED_DAMAGE] },
	{ VUHDO_ID_RANGED_HEAL, VUHDO_HEADER_TEXTS[VUHDO_ID_RANGED_HEAL] },
};
