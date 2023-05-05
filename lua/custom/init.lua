-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
require "custom.autocmds"
require "custom.vim-plug"

vim.filetype.add {
  filename = {
    [".mkshrc"] = "sh",
  },
}

vim.opt.guifont = { "CaskaydiaCove NF", ":h11" }
