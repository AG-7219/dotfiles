-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Disable LazyVim auto format
vim.g.autoformat = false

vim.o.tabstop = 4 -- A TAB character looks like 4 spaces
vim.o.expandtab = true -- Pressing the TAB key will insert spaces instead of a TAB character
vim.o.softtabstop = 4 -- Number of spaces inserted instead of a TAB character
vim.o.shiftwidth = 4 -- Number of spaces inserted when indenting

-- clipboard provider settings to copy text over ssh using OSC 52 native support
vim.g.clipboard = {
  name = 'OSC 52',
  copy = {
    ['+'] = require('vim.ui.clipboard.osc52').copy('+'),
    ['*'] = require('vim.ui.clipboard.osc52').copy('*'),
  },
  paste = {
    ['+'] = require('vim.ui.clipboard.osc52').paste('+'),
    ['*'] = require('vim.ui.clipboard.osc52').paste('*'),
  },
}

-- LSP Server to use for Python.
-- Set to "basedpyright" to use basedpyright instead of pyright.
vim.g.lazyvim_python_lsp = "pyright"
-- Set to "ruff_lsp" to use the old LSP implementation version.
vim.g.lazyvim_python_ruff = "ruff"

-- Netrw settings to use gssh-agent for ssh commands
vim.g.netrw_scp_cmd           = 'gssh-agent scp -q'
vim.g.netrw_scp_cmd           = 'gssh-agent scp -q'
vim.g.netrw_sftp_cmd          = 'gssh-agent sftp'
vim.g.netrw_ssh_cmd           = 'gssh-agent ssh'
vim.g.netrw_list_cmd          = 'gssh-agent ssh USEPORT HOSTNAME ls -FLa'
vim.g.netrw_mkdir_cmd         = 'gssh-agent ssh USEPORT HOSTNAME mkdir'
vim.g.netrw_rename_cmd        = 'gssh-agent ssh USEPORT HOSTNAME mv'
vim.g.netrw_rm_cmd            = 'gssh-agent ssh USEPORT HOSTNAME rm'
vim.g.netrw_rmdir_cmd         = 'gssh-agent ssh USEPORT HOSTNAME rmdir'
vim.g.netrw_rmf_cmd           = 'gssh-agent ssh USEPORT HOSTNAME rm -f '
vim.g.netrw_ssh_cmd           = 'gssh-agent ssh'
