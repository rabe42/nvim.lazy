-- NOTE: The lsp for rust ist configured in the rustaceanvim plugin!
return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "ts_ls" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			-- local capabilities = require("cmp_nvim_lsp").default_capabilities()

			-- local lspconfig = require("lspconfig")
			-- lspconfig.lua_ls.setup({
			--                 settings = {
			--                     Lua = {
			--                         diagnostics = {
			--                             globals = { "vim" }
			--                         }
			--                     }
			--                 },
			-- 	capabilities = capabilities,
			-- })
			-- lspconfig.ts_ls.setup({
			-- 	capabilities = capabilities,
			-- })
            -- lspconfig.powershell_es.setup{
            --     bundle_path = "C:/Users/ralf/AppData/Local/nvim-data/mason/packages/powershell-editor-services"
            -- } -- This shit isn't working at all!

			local options = {}
			vim.keymap.set("n", "gD", vim.lsp.buf.declaration, options)
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, options)
			vim.keymap.set("n", "gb", "<C-o>", options)
			vim.keymap.set("n", "<leader>>", "<C-]>", options)
			vim.keymap.set("n", "<leader><", "<C-o>", options)
			vim.keymap.set("n", "K", vim.lsp.buf.hover, options)
			vim.keymap.set("n", "gi", vim.lsp.buf.implementation, options)
			vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, options)
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, options)
            --
			-- LSP Diagnostics Options Setup
			local sign = function(opts)
				vim.fn.sign_define(opts.name, {
					texthl = opts.name,
					text = opts.text,
					numhl = "",
				})
			end

			sign({ name = "DiagnosticSignError", text = "" })
			sign({ name = "DiagnosticSignWarn", text = "" })
			sign({ name = "DiagnosticSignHint", text = "" })
			sign({ name = "DiagnosticSignInfo", text = "" })
		end,
	},
}
