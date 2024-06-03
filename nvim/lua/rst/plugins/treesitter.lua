return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function ()
            local configs = require("nvim-treesitter.configs")

            configs.setup({
                ensure_installed = { "bash", "lua", "css", "vimdoc", "javascript", "html", "json", "markdown", "scss", "typescript", "rust", "toml", "angular", },
                highlight = { enable = true },
                indent = { enable = true },
            })
        end
    },
    {
        "nvim-treesitter/nvim-treesitter-context"
    }
}

