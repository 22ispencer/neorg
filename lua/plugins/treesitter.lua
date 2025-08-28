return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		dependencies = { "OXY2DEV/markview.nvim" },
		lazy = false,
		opts = {},
		config = function(_, opts)
			require("nvim-treesitter.configs").setup({
				indent = {
					enable = true,
				},
			})
			vim.opt.foldmethod = "expr"
			vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
			vim.opt.foldlevel = 99
			vim.api.nvim_create_autocmd("FileType", {
				pattern = {
					"python",
					"go",
					"javascript",
					"javascriptreact",
					"typescript",
					"typescriptreact",
				},
				callback = function()
					vim.treesitter.start()
				end,
			})
		end,
	},
	{ "nvim-treesitter/nvim-treesitter-context" },
}
