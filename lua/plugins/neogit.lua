return {
	"NeogitOrg/neogit",
	dependencies = { "nvim-lua/plenary.nvim", "sindrets/diffview.nvim", "echasnovski/mini.pick" },
	opts = {
		view = {
			default = {
				layout = "diff2_vertical",
			},
		},
	},
	keys = {
		{ "<Leader>g", "<cmd>Neogit<cr>", desc = "neo[g]it" },
	},
}
