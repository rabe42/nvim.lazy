return {
	"mrcjkb/rustaceanvim",
	version = "^6", -- Recommended
    lazy = false,
	config = function()
	-- 	local bufnr = vim.api.nvim_get_current_buf()
	-- 	vim.keymap.set(
	--             "n",
	--             "<leader>a",
	--             function()
	-- 		    vim.cmd.RustLsp("codeAction") -- supports rust-analyzer's grouping
	--     			-- or vim.lsp.buf.codeAction() if you don't want grouping.
	--     	end,
	--             { silent = true, buffer = bufnr }
	--         )
		vim.g.rustaceanvim = {
			tools = {
				hover_actions = {
                    -- This allows to navigate the popup, called with S-k
					auto_focus = true,
				},
            },
			-- LSP configuration
			server = {
				on_attach = function(_, bufnr)
					-- you can also put keymaps in here
                    vim.lsp.inlay_hint.enable(true)
				end,
				default_settings = {
					-- rust-analyzer language server configuration
					["rust-analyzer"] = {},
				},
			},
	-- 		-- DAP configuration
	-- 		dap = {},
		}
	end,
}
