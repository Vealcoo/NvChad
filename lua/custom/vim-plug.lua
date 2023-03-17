local Plug = vim.fn["plug#"]

vim.call("plug#begin", "~/AppData/local/nvim/vim-plug")

Plug("mg979/vim-visual-multi", {
  ["branch"] = "master",
})

vim.call "plug#end"
