return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	config = function()
		local builtin = require("telescope.builtin")

		-- Setup telescope.nvim
		require("telescope").setup({})

		-- Set keymaps
		vim.keymap.set("n", "<leader>tp", builtin.git_files)
		vim.keymap.set("n", "<leader>tr", builtin.live_grep)
	end,
	dependencies = { "nvim-lua/plenary.nvim" },
}
