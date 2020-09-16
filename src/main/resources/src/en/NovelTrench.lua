-- {"id":81,"version":"1.0.0","author":"Doomsdayrs"}
return Require("Madara")("https://noveltrench.com",{
	id=81,
	name="NovelTrench",
	imageURL="https://noveltrench.com/wp-content/uploads/2019/08/transparent1.png",
	shrinkURLNovel="manga",
	genres={
		"Action",
		"Adult",
		"Adventure",
		"Alchemy",
		"Comedy",
		"Cooking",
		"Crafting",
		"Drama",
		"Ecchi",
		"Fantasy",
		"Female Protagonist",
		"Game Elements",
		"Gender Bender",
		"Hamrem-Seeking Male Lead",
		"Harem",
		"Historical",
		"Horror",
		"Isekai",
		"Josei",
		"Kingdom Building",
		"Magic sword and sorcery",
		"Manhua",
		"Manhwa",
		"Martial Arts",
		"Mature",
		"Mecha",
		"Modern Setting",
		"Mystery",
		"Political Intrigue",
		"Psychological",
		"Reincarnation",
		"Romance",
		"School Life",
		"Sci-fi",
		"Seinen",
		"Shoujo",
		"Shounen",
		"Shounen Ai",
		"Slice of Life",
		"Smut",
		"Sports",
		"Supernatural",
		"Superpowers",
		"Swords",
		"Swordsman",
		"Thriller",
		"Tragedy",
		"Transported to Another World",
		"Virtual Reality",
		"War",
		"Wuxia",
		"Xianxia",
		"Xuanhuan",
		"Yaoi"
	},
	---@param _table table
	appendToSearchFilters=function(_table)
		table.insert(_table,7,
				DropdownFilter(2226,"Genres Condition",{ "OR (having one of selected genres)","AND (having all selected genres" }))
		return _table
	end,
	appendToSearchURL=function(url,table)
		return url .. "&op=" .. table[7]
	end,
	latestNovelSel="div.col-12.col-md-4.badge-pos-1",
	novelPageTitleSel="h1",
	novelListingURLPath="manga"
})
