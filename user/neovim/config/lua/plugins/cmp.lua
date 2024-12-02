return {
	"hrsh7th/nvim-cmp",
	config = function()
		local cmp = require("cmp")

		-- Setup nvim-cmp
		cmp.setup({
			mapping = cmp.mapping.preset.insert({
				["<C-e>"] = cmp.mapping.abort(),
				["<C-f>"] = cmp.mapping.scroll_docs(4),
				["<C-b>"] = cmp.mapping.scroll_docs(-4),
				["<C-Space>"] = cmp.mapping.complete(),
				["<CR>"] = cmp.mapping.confirm({ select = true }),
			}),
			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
				{ name = "path" },
			}),
		})
	end,
	dependencies = {
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-nvim-lsp",
	},
}
