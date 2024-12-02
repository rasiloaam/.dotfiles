return {
	"windwp/nvim-autopairs",
	event = "InsertEnter",
	config = function()
		-- Setup nvim-autopairs
		require("nvim-autopairs").setup({})
	end,
}
