return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	dependencies = {
		"windwp/nvim-ts-autotag",
	},
	config = function()
		local treesitter = require("nvim-treesitter.configs")

		treesitter.setup({
			modules = {},
			ignore_install = {},
			highlight = {
				enable = true,
			},
			sync_install = true,
			auto_install = true,
			indent = { enable = true },
			autotag = {
				enable = true,
			},
			ensure_installed = {
				"html",
				"css",
				"javascript",
				"json",
				"c",
				"python",
				"markdown",
				"yaml",
				"lua",
				"vim",
			},
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<C-space>",
					node_incremental = "<C-space>",
					scope_incremental = false,
					node_decremental = "<C-bs>",
				},
			},
		})
	end,
}
