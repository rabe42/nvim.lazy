return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
    lazy = false,
    branch = "main",
    main = "nvim-treesitter.config",
    -- opts = {
        -- ensure_installed = {"lua", "java", "javascript", "typescript", "rust"},
        -- auto_install = true,
        -- highlight = { enable = true },
        -- indent = { enable = true },
    -- }
    init = function()
        vim.api.nvim_create_autocmd('FileType', { 
            callback = function() 
              -- Enable treesitter highlighting and disable regex syntax
              pcall(vim.treesitter.start) 
              -- Enable treesitter-based indentation
              vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()" 
            end, 
        })
    end,
}
