local prefabs = {}

table.insert(prefabs, CreatePrefabSkin("templatechar_none",
{
	base_prefab = "templatechar",
	build_name_override = "templatechar",
	type = "base",
	rarity = "Character",
	skip_item_gen = true,
	skip_giftable_gen = true,
	skin_tags = { "BASE", "TEMPLATECHAR", },
	skins = {
		normal_skin = "templatechar",
	    ghost_skin = "ghost_templatechar_build",
	},
	assets = {
		Asset( "ANIM", "anim/templatechar.zip" ),
		Asset( "ANIM", "anim/ghost_templatechar_build.zip" ),
	},

}))

table.insert(prefabs, CreatePrefabSkin("templatechar_victorian",
{
	base_prefab = "templatechar",
	build_name_override = "templatechar_victorian",
	type = "base",
	rarity = "Elegant",
	rarity_modifier = "Woven",
	skip_item_gen = true,
	skip_giftable_gen = true,
	skin_tags = { "BASE", "TEMPLATECHAR", "VICTORIAN"},
	skins = {
		normal_skin = "templatechar_victorian",
		ghost_skin = "ghost_templatechar_build_victorian",
	},

	assets = {
		Asset( "ANIM", "anim/templatechar_victorian.zip" ),
		Asset( "ANIM", "anim/ghost_templatechar_build_victorian.zip" ),
	},

}))

return unpack(prefabs)
