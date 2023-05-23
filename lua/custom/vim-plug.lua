local Plug = vim.fn["plug#"]

vim.call("plug#begin", "~/AppData/local/nvim/vim-plug")

Plug("mg979/vim-visual-multi", {
  ["branch"] = "master",
})

Plug "kdheepak/lazygit.nvim"

Plug "junegunn/fzf"
Plug 'junegunn/fzf.vim'

vim.call "plug#end"
