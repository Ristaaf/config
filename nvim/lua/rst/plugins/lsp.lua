return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		{ "antosha417/nvim-lsp-file-operations", config = true },
	},
	config = function()
		local lspconfig = require("lspconfig")
		local cmp_nvim_lsp = require("cmp_nvim_lsp")
		local keymap = vim.keymap

		local opts = { noremap = true, silent = true }
		local on_attach = function(client, bufnr)
			opts.buffer = bufnr
			keymap.set("n", "gf", ":Telescope lsp_references show_line=false<CR>", opts) -- show definition, references
			keymap.set("n", "gD", vim.lsp.buf.declaration, opts) -- got to declaration
			keymap.set("n", "gd", vim.lsp.buf.definition, opts) -- see definition and make edits in window
			keymap.set("n", "gi", vim.lsp.buf.implementation, opts) -- go to implementation
			keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts) -- see available code actions
			keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts) -- smart rename
			keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, opts) -- show  diagnostics for line
			keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts) -- show diagnostics for cursor
			keymap.set("n", "[d", vim.diagnostic.goto_prev, opts) -- jump to previous diagnostic in buffer
			keymap.set("n", "]d", vim.diagnostic.goto_next, opts) -- jump to next diagnostic in buffer
			keymap.set("n", "K", vim.lsp.buf.hover, opts) -- show documentation for what is under cursor
			keymap.set("n", "<leader>o", "<cmd>LSoutlineToggle<CR>", opts) -- see outline on right hand side

			if client.server_capabilities.documentHighlightProvider then
				keymap.set("n", "<leader>ndh", vim.lsp.buf.clear_references, opts)
				keymap.set("n", "<leader>h", vim.lsp.buf.document_highlight, opts)
			end
		end

		local capabilities = cmp_nvim_lsp.default_capabilities()

		lspconfig["html"].setup({
			capabilities = capabilities,
			on_attach = on_attach,
		})

		lspconfig["cssls"].setup({
			capabilities = capabilities,
			on_attach = on_attach,
		})

		lspconfig["jsonls"].setup({
			capabilities = capabilities,
			on_attach = on_attach,
		})

		lspconfig["gopls"].setup({
			capabilities = capabilities,
			on_attach = on_attach,
		})

		lspconfig["tsserver"].setup({
			capabilities = capabilities,
			on_attach = on_attach,
		})

		lspconfig["rust_analyzer"].setup({
			capabilities = capabilities,
			on_attach = on_attach,
		})

		lspconfig["bashls"].setup({
			capabilities = capabilities,
			on_attach = on_attach,
		})

		lspconfig["lua_ls"].setup({
			capabilities = capabilities,
			on_attach = on_attach,
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" },
					},
				},
			},
		})
	end,
}
