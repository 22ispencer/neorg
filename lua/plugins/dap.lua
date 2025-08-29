return {
	{
		"mfussenegger/nvim-dap",
		keys = {
			{
				"<F5>",
				function()
					require("dap").continue()
				end,
			},
			{
				"<S-F5>",
				function()
					require("dap").terminate()
				end,
			},
			{
				"<F9>",
				function()
					require("dap").toggle_breakpoint()
				end,
			},
			{
				"<F10>",
				function()
					require("dap").step_over()
				end,
			},
			{
				"<F11>",
				function()
					require("dap").step_into()
				end,
			},
			{
				"<S-F11>",
				function()
					require("dap").step_out()
				end,
			},
		},
	},
	{
		"rcarriga/nvim-dap-ui",
		dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
		opts = {
			layouts = { ---@type dapui.Config.layout[]
				{
					elements = {
						{ id = "scopes", size = 0.75 },
						{ id = "watches", size = 0.25 },
					},
					position = "left",
					size = 40,
				},
				{
					elements = {
						{ id = "repl", size = 1 },
					},
					position = "bottom",
					size = 10,
				},
			},
		},
		keys = {
			{
				"<Leader>dt",
				function()
					require("dapui").toggle()
				end,
				desc = "[t]oggle ui",
			},
		},
	},
	{
		"mfussenegger/nvim-dap-python",
		config = function()
			require("dap-python").setup("uv")
		end,
	},
}
