return {
	"OXY2DEV/markview.nvim",
	lazy = false,
	priority = 49,
	enabled = not vim.g.vscode,
	opts = {
		preview = {
			icon_provider = "internal",
			hybrid_modes = { "i" },
		},
	},
}
