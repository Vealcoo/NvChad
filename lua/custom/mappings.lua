local M = {}

M.general = {
  n = {
    [";"] = { ":", "command mode", opts = { nowait = true } },
    ["<leader>nt"] = { "<cmd> tabnew <CR>", "open new tab" },
    ["]]"] = { "<C-w>w", "next window" },
    ["[["] = { "<C-w>W", "previous window" },
  },

  i = {
    ["jk"] = { "<ESC>", "escape vim" },
  },

  v = {
    ["<C-c>"] = { "y", "copy" },
    ["<C-v>"] = { "p", "paste" },
  },

  x = {
    ["<C-c>"] = { "y", "copy" },
    ["<C-v>"] = { "p", "paste" },
  },
}

M.nvimtree = {
  n = {
    ["ww"] = { "<cmd> NvimTreeToggle <CR>", "toggle nvimtree" },
  },
}

M.truzen = {
  n = {
    ["<leader>ta"] = { "<cmd> TZAtaraxis <CR>", "truzen ataraxis" },
    ["<leader>tm"] = { "<cmd> TZMinimalist <CR>", "truzen minimal" },
    ["<leader>tf"] = { "<cmd> TZFocus <CR>", "truzen focus" },
  },
}

M.treesitter = {
  n = {
    ["<leader>cu"] = { "<cmd> TSCaptureUnderCursor <CR>", "find media" },
  },
}

M.shade = {
  n = {
    ["<leader>s"] = {
      function()
        require("shade").toggle()
      end,

      "toggle shade.nvim",
    },
  },
}

M.nvterm = {
  n = {
    ["<leader>cc"] = {
      function()
        require("nvterm.terminal").send("clear && g++ -o out " .. vim.fn.expand "%" .. " && ./out", "vertical")
      end,

      "compile & run a cpp file",
    },
  },
}

M.gitsigns = {
  n = {
    ["git"] = { "<cmd> Gitsigns diffthis <CR>", "git diff" },
  },
}

M.trouble = {
  n = {
    ["err"] = { "<cmd> TroubleToggle <CR>", "trouble toggle" },
  },
}

M.symbol_outline = {
  n = {
    ["ee"] = { "<cmd> SymbolsOutline <CR>", "symbol outline" },
  },
}

M.go = {
  n = {
    ["test"] = { "<cmd> GoTestFile -v -F <CR>", "go test file" },
    ["gatag"] = { "<cmd> GoAddTest <CR>", "go add test" },
    ["gatest"] = { "<cmd> GoAddTag <CR>", "go add tag" },
  },
}

M.dap = {
  n = {
    ["<Leader>bp"] = { "<cmd> lua require'dap'.toggle_breakpoint() <CR>", "dap setting breakpoints" },
    ["<Leader>\\c"] = { "<cmd> lua require'dap'.continue() <CR>", "dap continue" },
    ["<Leader>\\i"] = { "<cmd> lua require'dap'.step_into() <CR>", "dap step into" },
    ["<Leader>\\o"] = { "<cmd> lua require'dap'.step_over() <CR>", "dap step over" },
  },
}

M.dapui = {
  n = {
    ["dui"] = { "<cmd> lua require'dapui'.toggle() <CR>", "dapui toggle" },
  },
}

M.hop = {
  n = {
    ["<Leader>w"] = { "<cmd> HopAnywhere <CR>", "hop any where" },
  },

  i = {
    ["ww"] = { "<cmd> HopWord <CR>", "hop any where" },
  },
}

return M
