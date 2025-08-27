return {
	{
		"mfussenegger/nvim-dap",
		keys = {
			{
				"<F5>",
				function()
					dap.continue()
				end,
			},
			{
				"<S-F5>",
				function()
					dap.terminate()
				end,
			},
			{
				"<F9>",
				function()
					dap.toggle_breakpoint()
				end,
			},
			{
				"<F10>",
				function()
					dap.step_over()
				end,
			},
			{
				"<F11>",
				function()
					dap.step_into()
				end,
			},
			{
				"<S-F11>",
				function()
					dap.step_out()
				end,
			},
		},
	},
	{
		"rcarriga/nvim-dap-ui",
		dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
		opts = {},
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
