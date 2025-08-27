return {
	"neovim/nvim-lspconfig",
	config = function()
		vim.keymap.set("n", "<Leader>lr", function()
			vim.lsp.buf.rename()
		end, { desc = "[r]ename" })
		vim.keymap.set("n", "<Leader>la", function()
			vim.lsp.buf.code_action()
		end, { desc = "[a]ction" })
		vim.keymap.set("n", "<Leader>ll", function()
			vim.lsp.buf.references()
		end, { desc = "[l]ist references" })
		vim.keymap.set("n", "gd", function()
			vim.lsp.buf.definition()
		end, { desc = "goto definition (lsp)" })
		vim.lsp.enable("lua_ls")
		vim.lsp.enable("pyright")
		vim.lsp.enable("basedpyright")
		vim.lsp.enable("ruff")
		vim.lsp.enable("gopls")
		vim.lsp.enable("ts_ls")
	end,
}
