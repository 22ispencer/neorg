return {
	"Olical/conjure",
	enabled = not vim.g.vscode,
	init = function()
		vim.g["conjure#mapping#doc_word"] = "gk"
	end,
}
