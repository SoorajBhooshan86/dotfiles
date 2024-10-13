return {
	"akinsho/flutter-tools.nvim",
	lazy = false,
	dependencies = {
		"nvim-lua/plenary.nvim",
		"stevearc/dressing.nvim", -- optional for vim.ui.select
	},
	config = function()
		require("flutter-tools").setup({

			ui = {
				-- the border type to use for all floating windows, the same options/formats
				-- used for ":h nvim_open_win" e.g. "single" | "shadow" | {<table-of-eight-chars>}
				border = "rounded",
				-- This determines whether notifications are show with `vim.notify` or with the plugin's custom UI
				-- please note that this option is eventually going to be deprecated and users will need to
				-- depend on plugins like `nvim-notify` instead.
				notification_style = "native",
			},
			decorations = {
				statusline = {
					-- set to true to be able use the 'flutter_tools_decorations.app_version' in your statusline
					-- this will show the current version of the flutter app from the pubspec.yaml file
					app_version = true,
					-- set to true to be able use the 'flutter_tools_decorations.device' in your statusline
					-- this will show the currently running device if an application was started with a specific
					-- device
					device = true,
					-- set to true to be able use the 'flutter_tools_decorations.project_config' in your statusline
					-- this will show the currently selected project configuration
					project_config = true,
				},
			},
		})

		local keymap = vim.keymap -- for conciseness

		keymap.set("n", "K", "<cmd>lua vim.lsp.buf.hover()<cr>", { desc = "Fuzzy find files in cwd" })
		keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>", { desc = "Fuzzy find recent files" })
		keymap.set("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<cr>", { desc = "Find string in cwd" })
		keymap.set(
			"n",
			"<leader>bca",
			"<cmd>lua vim.lsp.buf.range_code_action()<cr>",
			{ desc = "Find string under cursor in cwd" }
		)

		keymap.set("n", "<leader>fdv", "<cmd>FlutterDevices<CR>", { desc = "Show avaliable FlutterDevices " })
		keymap.set("n", "<leader>fe", "<cmd>FlutterEmulators<CR>", { desc = "Show avaliable Emulators" })
	end,
}
