return {
	settings = {

		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
			workspace = {
				library = {
					[vim.fn.expand("$VIMRUNTIME/lua"***REMOVED***] = true,
					[vim.fn.stdpath("con***REMOVED***g"***REMOVED*** .. "/lua"] = true,
				},
			},
		},
	},
}
