return {
	"gbprod/nord.nvim",
	priority = 1000,
	config = function()
		-- Setup nord.nvim
		require("nord").setup({
			transparent = true,
		})

		-- Set color scheme
		vim.cmd.colorscheme("nord")
	end,
}
