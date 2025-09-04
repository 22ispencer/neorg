return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		enabled = not vim.g.vscode,
		config = function()
			vim.cmd.colorscheme("catppuccin-mocha")
		end,
	},
}
