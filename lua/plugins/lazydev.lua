return {
	"folke/lazydev.nvim",
	enabled = not vim.g.vscode,
	ft = "lua", -- only load on lua files
	opts = {},
}
