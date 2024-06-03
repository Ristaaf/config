return {
    "sainnhe/everforest",
    config = function()
        vim.opt.background = "dark"
        vim.g.everforest_diagnostics_line_highlight = 1
        vim.g.everforest_background = "hard"
        vim.g.everforest_better_performance = 1
        vim.cmd("colorscheme everforest")
        vim.cmd("highlight LspReferenceRead guibg='#777777'")
        vim.fn.sign_define({
            {
        		name = "DiagnosticSignError",
        		text = "✘",
        		texthl = "DiagnosticSignError",
        		linehl = "ErrorLine",
        	},
        	{
        		name = "DiagnosticSignWarn",
        		text = "",
        		texthl = "DiagnosticSignWarn",
        		linehl = "WarningLine",
        	},
        	{
        		name = "DiagnosticSignInfo",
        		text = "◉",
        		texthl = "DiagnosticSignInfo",
        		linehl = "InfoLine",
        	},
        	{
        		name = "DiagnosticSignHint",
        		text = "",
        		texthl = "DiagnosticSignHint",
        		linehl = "HintLine",
        	},
        })
    end,
}

