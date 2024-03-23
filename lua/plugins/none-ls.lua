-- Configuring command line tools as lsp's.
-- This is just a bridge technology, until every new language comes with its own LSP.
-- NOTE: Use :Mason to install the different formatters etc. as they will be not installed automatically.
return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier,
			},
		})
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
