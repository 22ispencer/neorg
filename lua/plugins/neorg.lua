return {
	"nvim-neorg/neorg",
	enabled = not vim.g.vscode,
	dependencies = { "3rd/image.nvim" },
	lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
	version = "*", -- Pin Neorg to the latest stable release
	opts = {
		load = {
			["core.defaults"] = {},
			["core.concealer"] = {},
			["core.latex.renderer"] = (vim.loop.os_uname().sysname ~= "Windows_NT" and {}) or nil,
		},
	},
}
