local prefabs = {}

table.insert(prefabs, CreatePrefabSkin("fluff_none",
{
	base_prefab = "fluff",
	build_name_override = "fluff",
	type = "base",
	rarity = "Character",
	skip_item_gen = true,
	skip_giftable_gen = true,
	skin_tags = { "BASE", "FLUFF" },

	skins = {
		normal_skin = "fluff",
		ghost_skin = "ghost_fluff_build",
	},

	assets = {
		Asset( "ANIM", "anim/fluff.zip" ),
		Asset( "ANIM", "anim/ghost_fluff_build.zip" ),
	}

}))

table.insert(prefabs, CreatePrefabSkin("fluff_skintest",
{
	base_prefab = "fluff",
	build_name_override = "fluff_skintest",
	type = "base",
	rarity = "Character",
--	rarity_modifier = "Woven",
	skip_item_gen = true,
	skip_giftable_gen = true,
	skin_tags = { "BASE", "FLUFF" },

	skins = {
		normal_skin = "fluff_skintest",
		ghost_skin = "ghost_fluff_build",
	},

	assets = {
		Asset( "ANIM", "anim/fluff_skintest.zip" ),
		Asset( "ANIM", "anim/ghost_fluff_build.zip" ),
	}

}))

return unpack(prefabs)
