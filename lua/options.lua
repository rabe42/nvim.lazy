-- [[ Leader ]]
vim.g.mapleader = ","

-- [[ Context ]]
-- vim.opt.colorcolumn = '80'        -- str:  Show col for max line length
vim.opt.number = true                -- bool: Show line numbers
vim.opt.relativenumber = false       -- bool: Show relative line numbers
vim.opt.scrolloff = 4                -- int:  Min num lines of context
vim.opt.signcolumn = "yes"           -- str:  Show the sign column

-- [[ Filetypes ]]
vim.opt.encoding = 'utf8'            -- str:  String encoding to use
vim.opt.fileencoding = 'utf8'        -- str:  File encoding to use

-- [[ Theme ]]
vim.opt.syntax = "on"                -- str:  Allow syntax highlighting
vim.opt.termguicolors = true         -- bool: If term supports ui color then enable
vim.opt.cursorline = true

-- [[ Search ]]
vim.opt.ignorecase = true            -- bool: Ignore case in search patterns
vim.opt.smartcase = true             -- bool: Override ignorecase if search contains capitals
vim.opt.incsearch = true             -- bool: Use incremental search
vim.opt.hlsearch = true              -- bool: Highlight search matches

-- [[ Whitespace ]]
vim.opt.expandtab = true             -- bool: Use spaces instead of tabs
vim.opt.shiftwidth = 4               -- num:  Size of an indent
vim.opt.softtabstop = 4              -- num:  Number of spaces tabs count for in insert mode
vim.opt.tabstop = 4                  -- num:  Number of spaces tabs count for

-- [[ Splits ]]
vim.opt.splitright = true            -- bool: Place new window to right of current one
vim.opt.splitbelow = true            -- bool: Place new window below the current one

vim.opt.autoindent = true

-- [[ Slash ]]                        NOTE: breaks treesitter on Windows!
vim.opt.shellslash = false           -- bool: Allows to use '/' instead of '\' 

-- [[ Clipboard ]]
vim.opt.clipboard = "unnamedplus"    -- Using the system clipboard to make cut&paste between apps work.

-- [[ Completion ]]
-- Set completeopt to have a better completion experience
-- :help completeopt
-- menuone: popup even when there's only one match
-- noinsert: Do not insert text until a selection is made
-- noselect: Do not select, force to select one from the menu
-- shortness: avoid showing extra messages when using completion
-- updatetime: set updatetime for CursorHold
vim.opt.completeopt = {'menuone', 'noselect', 'noinsert'}
vim.opt.shortmess = vim.opt.shortmess + { c = true}
vim.api.nvim_set_option('updatetime', 300)

-- [[ Markdown ]]
vim.cmd([[
augroup Markdown
    au!
    autocmd BufNewFile,BufRead *.md set tw=75
    autocmd BufNewFile,BufRead *.md set spelllang=de,en
    autocmd BufNewFile,BufRead *.md set spellsuggest=best,9
    autocmd BufNewFile,BufRead *.md set spell!
augroup END
]])
