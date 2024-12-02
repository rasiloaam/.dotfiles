return {
	"stevearc/oil.nvim",
	config = function()
		-- Setup oil.nvim
		require("oil").setup({
			delete_to_trash = true,
			watch_for_changes = true,
			default_file_explorer = true,
			skip_confirm_for_simple_edits = true,
		})

		-- Set keymaps
		vim.keymap.set("n", "-", "<CMD>Oil<CR>")
	end,
}
