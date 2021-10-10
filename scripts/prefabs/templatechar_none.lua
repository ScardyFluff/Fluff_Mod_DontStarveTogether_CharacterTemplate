local prefabs = {}

table.insert(prefabs, CreatePrefabSkin("templatechar_none",
{
	base_prefab = "templatechar",
	build_name_override = "templatechar",
	type = "base",
	rarity = "Character",
	skip_item_gen = true,
	skip_giftable_gen = true,
	skin_tags = { "BASE", "TEMPLATECHAR" },

	skins = {
		normal_skin = "templatechar",
		ghost_skin = "ghost_templatechar_build",
	},

	assets = {
		Asset( "ANIM", "anim/templatechar.zip" ),
		Asset( "ANIM", "anim/ghost_templatechar_build.zip" ),
	}

}))

table.insert(prefabs, CreatePrefabSkin("templatechar_skintest",
{
	base_prefab = "templatechar",
	build_name_override = "templatechar_skintest",
	type = "base",
	rarity = "Character",
--	rarity_modifier = "Woven",
	skip_item_gen = true,
	skip_giftable_gen = true,
	skin_tags = { "BASE", "TEMPLATECHAR" },

	skins = {
		normal_skin = "templatechar_skintest",
		ghost_skin = "ghost_templatechar_build",
	},

	assets = {
		Asset( "ANIM", "anim/templatechar_skintest.zip" ),
		Asset( "ANIM", "anim/ghost_templatechar_build.zip" ),
	}

}))

return unpack(prefabs)
