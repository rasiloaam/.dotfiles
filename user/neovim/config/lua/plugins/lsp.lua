return {
	"neovim/nvim-lspconfig",
	config = function()
		-- Server configurations
		local servers = {
			nixd = {},
			gopls = {},
			ts_ls = {},
			lua_ls = {},
			pyright = {},
			rust_analyzer = {},
		}

		-- Make client capabilities
		local capabilities = vim.lsp.protocol.make_client_capabilities()

		-- Setup servers
		for name, config in pairs(servers) do
			-- Override only explicitly passed server configuration
			config.capabilities = vim.tbl_deep_extend("force", {}, capabilities, config.capabilities or {})

			-- Setup server
			require("lspconfig")[name].setup(config)
		end
	end,
}
