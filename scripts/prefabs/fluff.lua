local MakePlayerCharacter = require "prefabs/player_common"

local assets = {
	Asset("SCRIPT", "scripts/prefabs/player_common.lua")
}

-- Character Stats 
TUNING.FLUFF_HEALTH = 150
TUNING.FLUFF_HUNGER = 150
TUNING.FLUFF_SANITY = 200

-- Starting Inventory
TUNING.GAMEMODE_STARTING_ITEMS.DEFAULT.FLUFF = {
	"flint",
	"flint",
	"twigs",
	"twigs"
}

-- Generic
STRINGS.CHARACTERS.GENERIC.DESCRIBE.FLUFF = 
{
	GENERIC = "Generic",
	ATTACKER = "Generic",
	MURDERER = "Generic",
	REVIVER = "Generic",
	GHOST = "Generic",
	FIRESTARTER = "Generic"
}

-- Self
STRINGS.CHARACTERS.FLUFF.DESCRIBE.FLUFF = 
{
	GENERIC = "Sample",
	ATTACKER = "Sample",
	MURDERER = "Sample",
	REVIVER = "Sample",
	GHOST = "Sample",
	FIRESTARTER = "Sample"
}

-- Wilson... etc...
STRINGS.CHARACTERS.FLUFF.DESCRIBE.WILSON = 
{
	GENERIC = "Wilson",
	ATTACKER = "Wilson",
	MURDERER = "Wilson",
	REVIVER = "Wilson",
	GHOST = "Wilson",
	FIRESTARTER = "Wilson"
}

-- Local Stuff
local start_inv = {}
for k, v in pairs(TUNING.GAMEMODE_STARTING_ITEMS) do
    start_inv[string.lower(k)] = v.FLUFF
end

local prefabs = FlattenTree(start_inv, true)

-- When the character is revived from human
local function onbecamehuman(inst)
	-- Set speed when not a ghost (optional)
	inst.components.locomotor:SetExternalSpeedMultiplier(inst, "fluff_speed_mod", 1)
end

local function onbecameghost(inst)
	-- Remove speed modifier when becoming a ghost
   inst.components.locomotor:RemoveExternalSpeedMultiplier(inst, "fluff_speed_mod")
end

-- When loading or spawning the character
local function onload(inst)
    inst:ListenForEvent("ms_respawnedfromghost", onbecamehuman)
    inst:ListenForEvent("ms_becameghost", onbecameghost)

    if inst:HasTag("playerghost") then
        onbecameghost(inst)
    else
        onbecamehuman(inst)
    end
end

-- Server and Client Init
-- This initializes for both the server and client. Tags can be added here.
local common_postinit = function(inst) 
	-- Minimap icon
	inst.MiniMapEntity:SetIcon( "fluff.tex" )
end

-- Server Init
-- This initializes for the server only. Components are added here.
local master_postinit = function(inst)

-- Sets Starting Inventory
    inst.starting_inventory = start_inv[TheNet:GetServerGameMode()] or start_inv.default
	
-- Character Voice
	inst.soundsname = "wilson"

	-- Default Voices:
		-- "wilson"
		-- "willow"
		-- "wendy"

	-- Uncomment this line if the "wathgrithr"(Wigfrid) or "webber" voice is used.
    --inst.talker_path_override = "dontstarve_DLC001/characters/"
	
-- Stats	
	inst.components.health:SetMaxHealth(TUNING.FLUFF_HEALTH)
	inst.components.hunger:SetMax(TUNING.FLUFF_HUNGER)
	inst.components.sanity:SetMax(TUNING.FLUFF_SANITY)
	
-- Damage multiplier (optional)
	inst.components.combat.damagemultiplier = 1
	
-- Hunger rate (optional)
	inst.components.hunger.hungerrate = 1 * TUNING.WILSON_HUNGER_RATE

	inst.OnLoad = onload
	inst.OnNewSpawn = onload
	
end

return MakePlayerCharacter("fluff", prefabs, assets, common_postinit, master_postinit, prefabs)
