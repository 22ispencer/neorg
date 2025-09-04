return {
	"3rd/image.nvim",
	enabled = not (vim.g.vscode or vim.loop.os_uname().sysname == "Windows_NT"),
	opts = {},
}
