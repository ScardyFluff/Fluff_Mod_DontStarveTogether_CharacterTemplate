PrefabFiles = {
	"templatechar",
	"templatechar_none",
}

Assets = {

    Asset( "IMAGE", "bigportraits/templatechar.tex" ),
    Asset( "ATLAS", "bigportraits/templatechar.xml" ),
--  Asset( "IMAGE", "bigportraits/templatechar_none.tex" ),
--  Asset( "ATLAS", "bigportraits/templatechar_none.xml" ),
	Asset( "IMAGE", "bigportraits/templatechar_victorian.tex" ),
	Asset( "ATLAS", "bigportraits/templatechar_victorian.xml" ),

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
local _G = GLOBAL
local PREFAB_SKINS = _G.PREFAB_SKINS
local PREFAB_SKINS_IDS = _G.PREFAB_SKINS_IDS
local SKIN_AFFINITY_INFO = GLOBAL.require("skin_affinity_info")

modimport("scripts/skins_api")
modimport("scripts/speech_templatechar_others")

SKIN_AFFINITY_INFO.templatechar = {
	"templatechar_victorian",
}

PREFAB_SKINS["templatechar"] = {
	"templatechar_none",
	"templatechar_victorian",
}

PREFAB_SKINS_IDS = {}
for prefab,skins in pairs(PREFAB_SKINS) do
    PREFAB_SKINS_IDS[prefab] = {}
    for k,v in pairs(skins) do
      	  PREFAB_SKINS_IDS[prefab][v] = k
    end
end

AddSkinnableCharacter("templatechar")

-- Skin Strings
STRINGS.SKIN_NAMES.templatechar_none = "Wilba"
STRINGS.SKIN_NAMES.templatechar_victorian = "The Victorian"

STRINGS.SKIN_QUOTES.templatechar_victorian = "\"WILBA'TH DOTH NOT WANT WEARETH O' MOTHERS DRESS!\""
STRINGS.SKIN_DESCRIPTIONS.templatechar_victorian = "Wilba's tendency to go Full Hog was simply not enough to stop her mother from dressing her up all fancy-like."

-- The character select screen lines
STRINGS.CHARACTER_TITLES.templatechar = "The Sample Character"
STRINGS.CHARACTER_NAMES.templatechar = "Esc"
STRINGS.CHARACTER_DESCRIPTIONS.templatechar = "*Perk 1\n*Perk 2\n*Perk 3"
STRINGS.CHARACTER_QUOTES.templatechar = "\"Quote\""
STRINGS.CHARACTER_SURVIVABILITY.templatechar = "Slim"

-- Custom speech strings
STRINGS.CHARACTERS.TEMPLATECHAR = require "speech_templatechar"

-- The character's name as appears in-game 
STRINGS.NAMES.TEMPLATECHAR = "Sample"
STRINGS.SKIN_NAMES.templatechar_none = "Samlpe"

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
AddModCharacter("templatechar", "NEUTRAL", skin_modes)
