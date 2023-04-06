local telescope_setup, telescope = pcall(require, "telescope")
if not telescope_setup then
	return
end

local actions_setup, actions = pcall(require, "telescope.actions")
if not actions_setup then
	return
end

telescope.setup({
	defaults = {
		mappings = {
			i = {
				["<C-k>"] = actions.move_selection_previous,
				["<C-j>"] = actions.move_selection_next,
				["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
			},
		},
		file_ignore_patterns = { "node%_modules/.*" },
	},
})
require("telescope.builtin").lsp_references({
	layout_strategy = "vertical",
	layout_config = {
		width = 0.5,
		preview_cutoff = 80,
	},
})

telescope.load_extension("fzf")
