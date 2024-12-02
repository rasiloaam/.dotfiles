return {
	"lukas-reineke/indent-blankline.nvim",
	tag = "v2.20.8",
	config = function()
		require("indent_blankline").setup({
			char = "▎",
			context_char = "▎",
			show_current_context = true,
		})
	end,
}
