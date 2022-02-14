PrefabFiles = {
	"fluff",
	"fluff_none",
}

Assets = {

-- Character Portraits
	Asset( "IMAGE", "bigportraits/fluff.tex" ),
	Asset( "ATLAS", "bigportraits/fluff.xml" ),
	Asset( "IMAGE", "bigportraits/fluff_none.tex" ),
	Asset( "ATLAS", "bigportraits/fluff_none.xml" ),
	Asset( "IMAGE", "bigportraits/fluff_skintest.tex" ),
	Asset( "ATLAS", "bigportraits/fluff_skintest.xml" ),

-- Character Icons
	Asset( "IMAGE", "images/avatars/avatar_fluff.tex" ),
	Asset( "ATLAS", "images/avatars/avatar_fluff.xml" ),
	Asset( "IMAGE", "images/avatars/avatar_ghost_fluff.tex" ),
	Asset( "ATLAS", "images/avatars/avatar_ghost_fluff.xml" ),
	Asset( "IMAGE", "images/avatars/self_inspect_fluff.tex" ),
	Asset( "ATLAS", "images/avatars/self_inspect_fluff.xml" ),

-- Name Images
	Asset( "IMAGE", "images/names_fluff.tex" ),
	Asset( "ATLAS", "images/names_fluff.xml" ),
	Asset( "IMAGE", "images/names_gold_fluff.tex" ),
	Asset( "ATLAS", "images/names_gold_fluff.xml" ),

-- Map Icons
	Asset( "IMAGE", "images/map_icons/fluff.tex" ),
	Asset( "ATLAS", "images/map_icons/fluff.xml" ),

-- Inventory Images
--	Asset("ATLAS", "images/inventoryimages/test_item.xml"),
--	Asset("IMAGE", "images/inventoryimages/test_item.tex"),

-- Character Voice
--	Asset("SOUNDPACKAGE", "sound/fluff.fev"),	
--	Asset("SOUND", "sound/fluff.fsb"),

-- Unused
	Asset( "IMAGE", "images/saveslot_portraits/fluff.tex" ),
	Asset( "ATLAS", "images/saveslot_portraits/fluff.xml" ),
	Asset( "IMAGE", "images/selectscreen_portraits/fluff.tex" ),
	Asset( "ATLAS", "images/selectscreen_portraits/fluff.xml" ),
	Asset( "IMAGE", "images/selectscreen_portraits/fluff_silho.tex" ),
	Asset( "ATLAS", "images/selectscreen_portraits/fluff_silho.xml" ),

}

-- Voice Patching
--	RemapSoundEvent( "dontstarve/characters/fluff/death_voice", "fluff/characters/fluff/death_voice" )
--	RemapSoundEvent( "dontstarve/characters/fluff/hurt", "fluff/characters/fluff/hurt" )
--	RemapSoundEvent( "dontstarve/characters/fluff/talk_LP", "fluff/characters/fluff/talk_LP" )
--	RemapSoundEvent( "dontstarve/characters/fluff/emote", "fluff/characters/fluff/emote" )
--	RemapSoundEvent( "dontstarve/characters/fluff/ghost_LP", "fluff/characters/fluff/ghost_LP" )
--	RemapSoundEvent( "dontstarve/characters/fluff/pose", "fluff/characters/fluff/pose" )
--	RemapSoundEvent( "dontstarve/characters/fluff/yawn", "fluff/characters/fluff/yawn" )
--	RemapSoundEvent( "dontstarve/characters/fluff/eye_rub_vo", "fluff/characters/fluff/eye_rub_vo" )
--	RemapSoundEvent( "dontstarve/characters/fluff/carol", "fluff/characters/fluff/carol" )
--	RemapSoundEvent( "dontstarve/characters/fluff/sinking", "fluff/characters/fluff/sinking" )

--GLOBAL.fluff_voice = GetModConfigData("fluff_voice")

AddMinimapAtlas("images/map_icons/fluff.xml")

local require = GLOBAL.require
local STRINGS = GLOBAL.STRINGS
local _G = GLOBAL
local PREFAB_SKINS = _G.PREFAB_SKINS
local PREFAB_SKINS_IDS = _G.PREFAB_SKINS_IDS
local SKIN_AFFINITY_INFO = GLOBAL.require("skin_affinity_info")

modimport("scripts/skins_api")

SKIN_AFFINITY_INFO.fluff = {
	"fluff_skintest",
}

PREFAB_SKINS["fluff"] = {
	"fluff_none",
	"fluff_skintest",
}

PREFAB_SKINS_IDS = {}
for prefab,skins in pairs(PREFAB_SKINS) do
	PREFAB_SKINS_IDS[prefab] = {}
	for k,v in pairs(skins) do
		PREFAB_SKINS_IDS[prefab][v] = k
	end
end

AddSkinnableCharacter("fluff")

-- Skin Names
	STRINGS.SKIN_NAMES.fluff_none = "Default"
	STRINGS.SKIN_NAMES.fluff_warrior = "Warrior"
	STRINGS.SKIN_NAMES.fluff_dark = "Darker Lord"
	STRINGS.SKIN_NAMES.fluff_akb48hr = "Heavy Rotation"

-- Skin Quotes
	STRINGS.SKIN_QUOTES.fluff_none = "\"Where are my friends?\""
	STRINGS.SKIN_QUOTES.fluff_warrior = "\"And stay down!\""
	STRINGS.SKIN_QUOTES.fluff_dark = "\"You... understand me? We just get us!\""
	STRINGS.SKIN_QUOTES.fluff_akb48hr = "\"I want you~ I need you~ I love you~\""

-- Skin Descriptions
	STRINGS.SKIN_DESCRIPTIONS.fluff_none = "Your basic look."
	STRINGS.SKIN_DESCRIPTIONS.fluff_warrior = "Description"
	STRINGS.SKIN_DESCRIPTIONS.fluff_dark = "Description"
	STRINGS.SKIN_DESCRIPTIONS.fluff_akb48hr = "Description"

-- Character Info
	STRINGS.CHARACTER_TITLES.fluff = "The Multiplayer Template"
	STRINGS.CHARACTER_NAMES.fluff = "Sample"
	STRINGS.CHARACTER_DESCRIPTIONS.fluff = "*Perk 1\n*Perk 2\n*Perk 3"
	STRINGS.CHARACTER_QUOTES.fluff = "\"Quote\""
	STRINGS.CHARACTER_SURVIVABILITY.fluff = "Slim"

-- Character's Speech File
	STRINGS.CHARACTERS.FLUFF = require "speech_fluff"

-- Character's In-Game Name
	STRINGS.NAMES.FLUFF = "Sample"

-- The skins shown in the cycle view window on the character select screen.
-- A good place to see what you can put in here is in skinutils.lua, in the function GetSkinModes
local skin_modes = {

	{ type = "ghost_skin", anim_bank = "ghost", idle_anim = "idle", scale = 0.75, offset = { 0, -25 } }

}

-- Add mod character to mod character list. Also specify a gender. Possible genders are MALE, FEMALE, ROBOT, NEUTRAL, and PLURAL.
AddModCharacter("fluff", "ROBOT", skin_modes)
