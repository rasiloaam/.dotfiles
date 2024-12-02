return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			-- A list of parser names
			ensure_installed = {
				"rust",
				"python",
				"go",
				"lua",
				"regex",
				"nix",
				"json",
				"javascript",
				"typescript",
				"vue",
				"markdown",
				"toml",
			},

			-- Install parsers synchronously (only applied to `ensure_installed`)
			sync_install = false,

			-- Highlighting
			highlight = {
				-- Enable highlighting
				enable = true,
			},
		})
	end,
}
