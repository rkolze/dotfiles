return {
	{
		"saghen/blink.cmp",
		opts = {
			keymap = {
				preset = "default",
				["<C-x>"] = { "show", "show_documentation", "hide_documentation" },
				["<Enter>"] = { "accept", "fallback" },
				--["<C-y>"] = { "accept", "fallback" },
			},
		},
	},
	--{
	--	"zbirnenbaum/copilot.lua",
	--	opts = {
	--		suggestion = {
	--			auto_trigger = false,
	--			keymap = {
	--				accept = false, -- handled by blink.cmp
	--				next = "<C->",
	--			},
	--		},
	--	},
	--},
}
