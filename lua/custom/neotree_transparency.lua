-- Make Neo-tree background follow Normal highlight (transparent if Normal is)

vim.api.nvim_create_autocmd('ColorScheme', {
  pattern = '*',
  callback = function()
    -- Link Neo-tree groups to Normal so they inherit transparency/colors
    vim.api.nvim_set_hl(0, 'NeoTreeNormal', { link = 'Normal' })
    vim.api.nvim_set_hl(0, 'NeoTreeNormalNC', { link = 'Normal' })
  end,
})

-- Apply once for current colorscheme
vim.api.nvim_exec_autocmds('ColorScheme', { pattern = vim.g.colors_name })
