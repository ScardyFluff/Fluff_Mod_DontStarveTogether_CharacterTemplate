
-- Sample, The Multiplayer Template - modinfo.lua

-- Basic Info
-- Add all the info you want!
-- NOTE: you can use \n to make a paragraph break in the description!
	name = "Multiplayer Character Template"
	description = "An updated character template for Don't Starve Together."
	author = "DragonWolfLeo, ScardyFluff"
	version = "1.0.0"
	forumthread = ""

-- Current Version
-- Don't Starve, including the DLCs, use 6 here. But Don't Starve Together uses 10. Keep it in mind!
	api_version = 10

-- General Compatibility
-- Keep all of these "false" if you DON'T want the mod to work for Singleplayer.
	dont_starve_compatible = true
	reign_of_giants_compatible = true
	shipwrecked_compatible = true
	hamlet_compatible = true

-- Keep this "true" unless you want to make the mod compatible with Don't Starve. 
-- Of course, you can do the inverse and just put the above to "true" and this one "false", though at that point I recommend the OTHER template lol.
	dst_compatible = true


-- Event Compatibility
-- Make these "true" if you want to support the ReForged and Re-Gorge-itated Mods!
forge_compatible = false
gorge_compatible = false

-- Client Compatibility
all_clients_require_mod = true

-- Mod Menu Icon
-- Don't touch this.
-- NOTE: You can compile the modicon by placing a folder in Mods with an "images" folder inside, and placing the modicon PNG inside that folder.
	icon_atlas = "modicon.xml"
	icon = "modicon.tex"

-- Server Tags
-- I HAVE NO IDEA. HELP
server_filter_tags = {
"character",
}

-- Config Setup
-- I STILL don't know how to work with this, but I'll figure it out.
--	configuration_options = {}
