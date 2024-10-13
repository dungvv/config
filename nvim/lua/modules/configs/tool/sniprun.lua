return function()
	require("modules.utils").load_plugin("sniprun", {
		selected_interpreters = {}, -- " use those instead of the default for the current filetype
		repl_enable = {
			"Python3_original",
			"Python3_jupyter",
			"Bash_original",
			-- "Lua_nvim",
			-- "Lua_original",
		}, -- " enable REPL-like behavior for the given interpreters
		repl_disable = {}, -- " disable REPL-like behavior for the given interpreters
		interpreter_options = {
			GFM_original = {
				use_on_filetypes = { "markdown.pandoc" }, --# the 'use_on_filetypes' configuration key is
				--# available for every interpreter
			},
			Python3_original = {
				error_truncate = "auto", --# Truncate runtime errors 'long', 'short' or 'auto'
				--# the hint is available for every interpreter
				--# but may not be always respected
			},
		}, -- " intepreter-specific options, consult docs / :SnipInfo <name>
		-- " you can combo different display modes as desired
		display = {
			"Classic", -- "display results in the command-line  area
			"VirtualTextOk", -- "display ok results as virtual text (multiline is shortened)
			"VirtualTextErr", -- "display error results as virtual text
			-- "TempFloatingWindow",      -- "display results in a floating window
			"LongTempFloatingWindow", -- "same as above, but only long results. To use with VirtualText__
			-- "Terminal", -- "display results in a vertical split
		},
		display_options = {
			terminal_width = 45,
			notification_timeout = 5000,
		},
		-- " miscellaneous compatibility/adjustement settings
		inline_messages = 0, -- " inline_message (0/1) is a one-line way to display messages
		-- " to workaround sniprun not being able to display anything

		borders = "single", -- " display borders around floating windows
		-- " possible values are 'none', 'single', 'double', or 'shadow'
	})
end
