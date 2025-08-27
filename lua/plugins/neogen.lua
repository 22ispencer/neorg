return {
	"danymat/neogen",
	opts = {
		snippet_engine = "mini",
		languages = {
			python = {
				template = {
					annotation_convention = "google_docstrings", -- for a full list of annotation_conventions, see supported-languages below,
				},
			},
		},
	},
	keys = {
		{
			"<Leader>ld",
			function()
				require("neogen").generate()
			end,
			desc = "[d]ocstring snippet",
		},
	},
}
