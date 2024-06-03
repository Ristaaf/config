return {
    "folke/trouble.nvim",
    opts = {
        auto_open = false,
        auto_close = true,
        use_diagostics_signs = true,
    },
    keys = {
        { "<leader>t", ":TroubleToggle<cr>", desc = "Toggle Trouble" },
    }
}

