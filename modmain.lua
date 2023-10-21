
-- Sample, The Singleplayer Template - modmain.lua

-- Make sure to add all the ZIP's names from inside the anim folder.(?)
PrefabFiles = {
	"templatechar",
	"templatechar_none",
}

-- These are the files that aren't part of the ZIPs.
Assets = {
-- Character Portraits
-- This is the big images that appear when you select a character. (I think this one is unused now.)
	Asset( "IMAGE", "bigportraits/templatechar.tex" ),
	Asset( "ATLAS", "bigportraits/templatechar.xml" ),

-- These are the skin portraits.
	Asset( "IMAGE", "bigportraits/templatechar_none.tex" ),
	Asset( "ATLAS", "bigportraits/templatechar_none.xml" ),

--	Asset( "IMAGE", "bigportraits/templatechar_skintest.tex" ),
--	Asset( "ATLAS", "bigportraits/templatechar_skintest.xml" ),

-- Character Icons
	Asset( "IMAGE", "images/avatars/avatar_templatechar.tex" ),
	Asset( "ATLAS", "images/avatars/avatar_templatechar.xml" ),

	Asset( "IMAGE", "images/avatars/avatar_ghost_templatechar.tex" ),
	Asset( "ATLAS", "images/avatars/avatar_ghost_templatechar.xml" ),

	Asset( "IMAGE", "images/avatars/self_inspect_templatechar.tex" ),
	Asset( "ATLAS", "images/avatars/self_inspect_templatechar.xml" ),

    Asset( "IMAGE", "images/crafting_menu_avatars/avatar_templatechar.tex" ),
    Asset( "ATLAS", "images/crafting_menu_avatars/avatar_templatechar.xml" ),

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

-- Skin Names
	STRINGS.SKIN_NAMES.templatechar_none = "Default"
	STRINGS.SKIN_NAMES.templatechar_warrior = "Warrior"
	STRINGS.SKIN_NAMES.templatechar_dark = "Darker Lord"
	STRINGS.SKIN_NAMES.templatechar_akb48hr = "Heavy Rotation"

-- Skin Quotes
	STRINGS.SKIN_QUOTES.templatechar_none = "\"Where are my friends?\""
	STRINGS.SKIN_QUOTES.templatechar_warrior = "\"And stay down!\""
	STRINGS.SKIN_QUOTES.templatechar_dark = "\"You... understand me? We just get us!\""
	STRINGS.SKIN_QUOTES.templatechar_akb48hr = "\"I want you~ I need you~ I love you~\""

-- Skin Descriptions
	STRINGS.SKIN_DESCRIPTIONS.templatechar_none = "Your basic look."
	STRINGS.SKIN_DESCRIPTIONS.templatechar_warrior = "Description"
	STRINGS.SKIN_DESCRIPTIONS.templatechar_dark = "Description"
	STRINGS.SKIN_DESCRIPTIONS.templatechar_akb48hr = "Description"

-- Character Info
	STRINGS.NAMES.TEMPLATECHAR = "Sample"
	STRINGS.CHARACTER_NAMES.templatechar = "Sample"
	STRINGS.CHARACTER_QUOTES.templatechar = "\"Quote\""
	STRINGS.CHARACTER_TITLES.templatechar = "The Multiplayer Template"
	STRINGS.CHARACTER_DESCRIPTIONS.templatechar = "*Perk 1\n*Perk 2\n*Perk 3"
	STRINGS.CHARACTER_SURVIVABILITY.templatechar = "Slim"
	STRINGS.CHARACTER_ABOUTME.templatechar = "About Sample..."
	STRINGS.CHARACTER_BIOS.templatechar = 
		{
			{ title = "Age", desc = "20" },
			{ title = "Favorite Food", desc = "Taffy" },
			{ title = "Story Title", desc = "To be determined..." },
		}

-- Character's Speech File
	STRINGS.CHARACTERS.TEMPLATECHAR = require "speech_templatechar"

-- Event Strings
	STRINGS.LAVAARENA_CHARACTER_DESCRIPTIONS.templatechar = "*Becomes stronger when health is low, increasing attack power and movement speed for 15 seconds\n\nExpertise:\nMelee"
	STRINGS.QUAGMIRE_CHARACTER_DESCRIPTIONS.templatechar = "*Expert haggler\n\n\n\n*Expertise:\nShopping"

-- Gorge Lobby Voice
if GorgeEnv ~= nil then
	GorgeEnv.AddLobbyVoice("templatechar", "wilson")
	-- If your character has webber/wathgrithr voice, use this line
	-- GorgeEnv.AddLobbyVoice("esctemplate", "wathgrithr", "dontstarve_DLC001/characters/")
end

-- The skins shown in the cycle view window on the character select screen.
-- A good place to see what you can put in here is in skinutils.lua, in the function GetSkinModes
local skin_modes = {
	{
		type = "ghost_skin",
		anim_bank = "ghost",
		idle_anim = "idle",
		scale = 0.75,
		offset = { 0, -25 }
	}
}

-- Add character to game and assign pronouns.
-- Possible pronouns are: MALE(he/his), FEMALE(she/her) and ROBOT(they/their). Might be more.
AddModCharacter("templatechar", "ROBOT", skin_modes)
