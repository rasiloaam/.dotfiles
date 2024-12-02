return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			nix = { "alejandra" },
			python = { "ruff_format" },
			go = { "goimports", "gofmt" },
			rust = { "rustfmt", lsp_format = "fallback" },
		},
	},
	keys = {
		{
			"<leader>ff",
			function()
				require("conform").format({ async = true })
			end,
		},
	},
}
