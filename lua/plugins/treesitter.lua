return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
    lazy = false,
    branch = "master",
    main = "nvim-treesitter.config",
    opts = {
        -- ensure_installed = {"lua", "java", "javascript", "typescript", "rust"},
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true },
    }
}
