require "custom.commands"
require "custom.autocmds"
require "custom.plugins.vim-plug"

vim.filetype.add {
  filename = {
    [".mkshrc"] = "sh",
  },
}
