require("fireninja.remap")
require("fireninja.set")

vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()]]

-- Set filetypes as typescriptreact
vim.api.nvim_command('autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact')

-- Set filetype as markdown for .md files
vim.api.nvim_command('autocmd BufNewFile,BufReadPost *.md set filetype=markdown')

-- Without this, vim breaks in the middle of words when wrapping
vim.api.nvim_command('autocmd FileType markdown setlocal nolist wrap lbr')
