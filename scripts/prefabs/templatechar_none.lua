local assets =
{
	Asset( "ANIM", "anim/templatechar.zip" ),
	Asset( "ANIM", "anim/ghost_templatechar_build.zip" ),
}

local skins =
{
	normal_skin = "templatechar",
	ghost_skin = "ghost_templatechar_build",
}

return CreatePrefabSkin("templatechar_none",
{
	base_prefab = "templatechar",
	type = "base",
	assets = assets,
	skins = skins, 
	skin_tags = {"TEMPLATECHAR", "CHARACTER", "BASE"},
	build_name_override = "templatechar",
	rarity = "Character",
})