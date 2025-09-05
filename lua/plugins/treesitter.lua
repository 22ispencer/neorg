return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		dependencies = { "OXY2DEV/markview.nvim" },
		lazy = false,
		enabled = not vim.g.vscode,
		opts = {},
		config = function(_, opts)
			vim.api.nvim_create_autocmd("FileType", {
				callback = function(args)
					local filetype = args.match
					local lang = vim.treesitter.language.get_lang(filetype)
					if not lang then
						return
					end
					if vim.treesitter.language.add(lang) then
						vim.wo.foldmethod = "expr"
						vim.wo.foldlevel = 99
						vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
						vim.bo.indentexpr = "nvim_treesitter#indent()"
						vim.treesitter.start()
					end
				end,
			})
		end,
	},
	{ "nvim-treesitter/nvim-treesitter-context" },
}
