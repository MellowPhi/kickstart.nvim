-- Global default: use 2 spaces, never tabs
vim.o.expandtab = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.softtabstop = 2

-- Ensure every new buffer keeps the same settings (overrides guess-indent if present)
vim.api.nvim_create_autocmd('FileType', {
  pattern = '*',
  callback = function()
    vim.bo.expandtab = true
    vim.bo.tabstop = 2
    vim.bo.shiftwidth = 2
    vim.bo.softtabstop = 2
  end,
})
