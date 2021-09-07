PrefabFiles = {
	"templatechar",
	"templatechar_none",
}

Assets = {

    Asset( "IMAGE", "bigportraits/templatechar.tex" ),
    Asset( "ATLAS", "bigportraits/templatechar.xml" ),
--  Asset( "IMAGE", "bigportraits/templatechar_none.tex" ),
--  Asset( "ATLAS", "bigportraits/templatechar_none.xml" ),

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
    Asset("ATLAS", "images/inventoryimages/test_item.xml"),
    Asset("IMAGE", "images/inventoryimages/test_item.tex"),

-- Unused
    Asset( "IMAGE", "images/saveslot_portraits/templatechar.tex" ),
    Asset( "ATLAS", "images/saveslot_portraits/templatechar.xml" ),
    Asset( "IMAGE", "images/selectscreen_portraits/templatechar.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/templatechar.xml" ),
    Asset( "IMAGE", "images/selectscreen_portraits/templatechar_silho.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/templatechar_silho.xml" ),

}

AddMinimapAtlas("images/map_icons/templatechar.xml")

local require = GLOBAL.require
local STRINGS = GLOBAL.STRINGS
local PREFAB_SKINS = _G.PREFAB_SKINS
local PREFAB_SKINS_IDS = _G.PREFAB_SKINS_IDS
local SKIN_AFFINITY_INFO = GLOBAL.require("skin_affinity_info")

modimport("scripts/tools/skins_api")

SKIN_AFFINITY_INFO.engineer = {
	"engineer_blu",
	"engineer_rose",
	"engineer_shadow",
	"engineer_formal",
	"engineer_survivor",
}

PREFAB_SKINS["engineer"] = {
	"engineer_none", 
	"engineer_blu",
	"engineer_rose",
	"engineer_shadow",
	"engineer_formal",
	"engineer_survivor",
}

PREFAB_SKINS_IDS = {}
for prefab,skins in pairs(PREFAB_SKINS) do
    PREFAB_SKINS_IDS[prefab] = {}
    for k,v in pairs(skins) do
      	  PREFAB_SKINS_IDS[prefab][v] = k
    end
end

AddSkinnableCharacter("engineer")

TUNING.GAMEMODE_STARTING_ITEMS.DEFAULT.ENGINEER = {
	"test_item",
	"test_weapon",
	"test_hat"
	}

TUNING.ENGINEER_HEALTH = 125
TUNING.ENGINEER_HUNGER = 150
TUNING.ENGINEER_SANITY = 200


-- The character select screen lines
STRINGS.CHARACTER_TITLES.templatechar = "The Sample Character"
STRINGS.CHARACTER_NAMES.templatechar = "Esc"
STRINGS.CHARACTER_DESCRIPTIONS.templatechar = "*Perk 1\n*Perk 2\n*Perk 3"
STRINGS.CHARACTER_QUOTES.templatechar = "\"Quote\""
STRINGS.CHARACTER_SURVIVABILITY.templatechar = "Slim"

-- Custom speech strings
STRINGS.CHARACTERS.TEMPLATECHAR = require "speech_templatechar"

STRINGS.CHARACTERS.GENERIC.DESCRIBE.ZANPARTIZANNE = 
{
	GENERIC = "",
	ATTACKER = "",
	MURDERER = "",
	REVIVER = "",
	GHOST = "",
}

-- The character's name as appears in-game 
STRINGS.NAMES.TEMPLATECHAR = "Esc"
STRINGS.SKIN_NAMES.templatechar_none = "Esc"

-- The skins shown in the cycle view window on the character select screen.
-- A good place to see what you can put in here is in skinutils.lua, in the function GetSkinModes
local skin_modes = {
    { 
        type = "ghost_skin",
        anim_bank = "ghost",
        idle_anim = "idle", 
        scale = 0.75, 
        offset = { 0, -25 } 
    },
}

-- Add mod character to mod character list. Also specify a gender. Possible genders are MALE, FEMALE, ROBOT, NEUTRAL, and PLURAL.
AddModCharacter("templatechar", "FEMALE", skin_modes)
