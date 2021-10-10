PrefabFiles = {
	"templatechar",
	"templatechar_none",
}

Assets = {

-- Character Portraits
	Asset( "IMAGE", "bigportraits/templatechar.tex" ),
	Asset( "ATLAS", "bigportraits/templatechar.xml" ),
	Asset( "IMAGE", "bigportraits/templatechar_none.tex" ),
	Asset( "ATLAS", "bigportraits/templatechar_none.xml" ),
	Asset( "IMAGE", "bigportraits/templatechar_skintest.tex" ),
	Asset( "ATLAS", "bigportraits/templatechar_skintest.xml" ),

-- Character Icons
	Asset( "IMAGE", "images/avatars/avatar_templatechar.tex" ),
	Asset( "ATLAS", "images/avatars/avatar_templatechar.xml" ),
	Asset( "IMAGE", "images/avatars/avatar_ghost_templatechar.tex" ),
	Asset( "ATLAS", "images/avatars/avatar_ghost_templatechar.xml" ),
	Asset( "IMAGE", "images/avatars/self_inspect_templatechar.tex" ),
	Asset( "ATLAS", "images/avatars/self_inspect_templatechar.xml" ),

-- Name Images
	Asset( "IMAGE", "images/names_templatechar.tex" ),
	Asset( "ATLAS", "images/names_templatechar.xml" ),
	Asset( "IMAGE", "images/names_gold_templatechar.tex" ),
	Asset( "ATLAS", "images/names_gold_templatechar.xml" ),

-- Map Icons
	Asset( "IMAGE", "images/map_icons/templatechar.tex" ),
	Asset( "ATLAS", "images/map_icons/templatechar.xml" ),

-- Inventory Images
--	Asset("ATLAS", "images/inventoryimages/test_item.xml"),
--	Asset("IMAGE", "images/inventoryimages/test_item.tex"),

-- Character Voice
--	Asset("SOUNDPACKAGE", "sound/templatechar.fev"),	
--	Asset("SOUND", "sound/templatechar.fsb"),

-- Unused
	Asset( "IMAGE", "images/saveslot_portraits/templatechar.tex" ),
	Asset( "ATLAS", "images/saveslot_portraits/templatechar.xml" ),
	Asset( "IMAGE", "images/selectscreen_portraits/templatechar.tex" ),
	Asset( "ATLAS", "images/selectscreen_portraits/templatechar.xml" ),
	Asset( "IMAGE", "images/selectscreen_portraits/templatechar_silho.tex" ),
	Asset( "ATLAS", "images/selectscreen_portraits/templatechar_silho.xml" ),

}

-- Voice Patching
--	RemapSoundEvent( "dontstarve/characters/templatechar/death_voice", "templatechar/characters/templatechar/death_voice" )
--	RemapSoundEvent( "dontstarve/characters/templatechar/hurt", "templatechar/characters/templatechar/hurt" )
--	RemapSoundEvent( "dontstarve/characters/templatechar/talk_LP", "templatechar/characters/templatechar/talk_LP" )
--	RemapSoundEvent( "dontstarve/characters/templatechar/emote", "templatechar/characters/templatechar/emote" )
--	RemapSoundEvent( "dontstarve/characters/templatechar/ghost_LP", "templatechar/characters/templatechar/ghost_LP" )
--	RemapSoundEvent( "dontstarve/characters/templatechar/pose", "templatechar/characters/templatechar/pose" )
--	RemapSoundEvent( "dontstarve/characters/templatechar/yawn", "templatechar/characters/templatechar/yawn" )
--	RemapSoundEvent( "dontstarve/characters/templatechar/eye_rub_vo", "templatechar/characters/templatechar/eye_rub_vo" )
--	RemapSoundEvent( "dontstarve/characters/templatechar/carol", "templatechar/characters/templatechar/carol" )
--	RemapSoundEvent( "dontstarve/characters/templatechar/sinking", "templatechar/characters/templatechar/sinking" )

--GLOBAL.templatechar_voice = GetModConfigData("templatechar_voice")

AddMinimapAtlas("images/map_icons/templatechar.xml")

local require = GLOBAL.require
local STRINGS = GLOBAL.STRINGS
local _G = GLOBAL
local PREFAB_SKINS = _G.PREFAB_SKINS
local PREFAB_SKINS_IDS = _G.PREFAB_SKINS_IDS
local SKIN_AFFINITY_INFO = GLOBAL.require("skin_affinity_info")

modimport("scripts/skins_api")

SKIN_AFFINITY_INFO.templatechar = {
	"templatechar_skintest",
}

PREFAB_SKINS["templatechar"] = {
	"templatechar_none",
	"templatechar_skintest",
}

PREFAB_SKINS_IDS = {}
for prefab,skins in pairs(PREFAB_SKINS) do
	PREFAB_SKINS_IDS[prefab] = {}
	for k,v in pairs(skins) do
		PREFAB_SKINS_IDS[prefab][v] = k
	end
end

AddSkinnableCharacter("templatechar")

-- Skin Names
	STRINGS.SKIN_NAMES.templatechar_none = "Sample"
	STRINGS.SKIN_NAMES.templatechar_skintest = "Skin Test"

-- Skin Quotes
	STRINGS.SKIN_QUOTES.templatechar_none = "\"Quote\""
	STRINGS.SKIN_QUOTES.templatechar_skintest = "\"Quote\""

-- Skin Descriptions
	STRINGS.SKIN_DESCRIPTIONS.templatechar_none = "Description"
	STRINGS.SKIN_DESCRIPTIONS.templatechar_skintest = "Description"

-- Character Info
	STRINGS.CHARACTER_TITLES.templatechar = "The Multiplayer Template"
	STRINGS.CHARACTER_NAMES.templatechar = "Sample"
	STRINGS.CHARACTER_DESCRIPTIONS.templatechar = "*Perk 1\n*Perk 2\n*Perk 3"
	STRINGS.CHARACTER_QUOTES.templatechar = "\"Quote\""
	STRINGS.CHARACTER_SURVIVABILITY.templatechar = "Slim"

-- Character's Speech File
	STRINGS.CHARACTERS.TEMPLATECHAR = require "speech_templatechar"

-- Character's In-Game Name
	STRINGS.NAMES.TEMPLATECHAR = "Sample"

-- The skins shown in the cycle view window on the character select screen.
-- A good place to see what you can put in here is in skinutils.lua, in the function GetSkinModes
local skin_modes = {

	{ type = "ghost_skin", anim_bank = "ghost", idle_anim = "idle", scale = 0.75, offset = { 0, -25 } }

}

-- Add mod character to mod character list. Also specify a gender. Possible genders are MALE, FEMALE, ROBOT, NEUTRAL, and PLURAL.
AddModCharacter("templatechar", "ROBOT", skin_modes)
