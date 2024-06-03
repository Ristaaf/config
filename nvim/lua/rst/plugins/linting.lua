
return {
	"mfussenegger/nvim-lint",
	event = { "BufWritePre", "BufNewFile", "BufEnter" },
	config = function()
		local lint = require("lint")

		vim.diagnostic.config({ virtual_text = true }, lint.get_namespace("eslint_d"))

		lint.linters_by_ft = {
			javascript = { "eslint_d" },
			typescript = { "eslint_d" },
			typescriptreact = { "eslint_d" },
			javascriptreact = { "eslint_d" },
			css = { "stylelint" },
			scss = { "stylelint" },
		}

		local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

		vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "BufLeave" }, {
			group = lint_augroup,
			callback = function()
				lint.try_lint()
			end,
		})
	end,
}
