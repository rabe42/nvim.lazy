return {
    "lewis6991/gitsigns.nvim",
    config = function()
        require("gitsigns").setup(
            vim.keymap.set("n", "<leader>rh", "Gitsigns preview_hunk<CR>", {})
        )
    end
}
