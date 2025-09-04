return {
	"neovim/nvim-lspconfig",
	enabled = not vim.g.vscode,
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
		-- Lua
		vim.lsp.enable("lua_ls")
		-- Python
		vim.lsp.enable("pyright")
		vim.lsp.enable("basedpyright")
		vim.lsp.enable("ruff")
		-- Go
		vim.lsp.enable("gopls")
		-- JavaScript
		vim.lsp.enable("ts_ls")
		-- Rust
		vim.lsp.enable("rust_analyzer")
		-- OCaml
		vim.lsp.enable("ocamllsp")
		-- Spell checking
		vim.lsp.enable("harper_ls")
		-- Swift
		vim.lsp.enable("sourcekit")
	end,
}
