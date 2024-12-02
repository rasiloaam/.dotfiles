return {
	"folke/todo-comments.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		-- Setup todo-comments.nvim
		require("todo-comments").setup({})

		-- Set keymaps
		vim.keymap.set("n", "<leader>td", "<CMD>TodoTelescope<CR>")
	end,
}
