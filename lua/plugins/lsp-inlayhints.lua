-- Provides a generic inlay hints, not only for rust, but also for JS and TypeScript.
--
-- NOTE: This must be updated with the next minor upgrade of neovim, as this
-- will be moved to a native API with even improved virtual text inline hints.
-- [Neovim - Nightly Inlay Hints](https://vinnymeller.com/posts/neovim_nightly_inlay_hints/)
--
return {
	"lvimuser/lsp-inlayhints.nvim",
	config = function()
        require("lsp-inlayhints").setup()

        vim.api.nvim_create_augroup("LspAttach_inlayhints", {})
		vim.api.nvim_create_autocmd("LspAttach", {
			group = "LspAttach_inlayhints",
			callback = function(args)
				if not (args.data and args.data.client_id) then
					return
				end

				local bufnr = args.buf
				local client = vim.lsp.get_client_by_id(args.data.client_id)
				require("lsp-inlayhints").on_attach(client, bufnr)
			end,
		})
	end,
}
