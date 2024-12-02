return {
	"neogitorg/neogit",
	opts = {},
	keys = {
		{
			"<Up>",
			function()
				require("neogit").open()
			end,
		},
	},
	dependencies = {
		"nvim-lua/plenary.nvim",
		"sindrets/diffview.nvim",
	},
}
