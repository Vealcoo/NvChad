---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "cmd line", opts = { nowait = true } },
    ["<leader>nt"] = { "<cmd> tabnew <CR>", "open new tab" },
    ["<leader>]"] = { "<C-w>w", "next window" },
    ["<leader>["] = { "<C-w>W", "previous window" },
    ["<leader><leader>"] = { "<cmd> lua require('nvchad_ui.tabufline').closeAllBufs() <CR>", "close all bufs" },
  },

  i = {
    ["jk"] = { "<ESC>", "escape vim" },
    ["<C-v>"] = { "<ESC>pa", "paste" },
  },

  v = {
    ["<C-c>"] = { "y", "copy" },
    ["<C-v>"] = { "p", "paste" },
  },

  x = {
    ["<C-c>"] = { "y", "copy" },
    ["<C-v>"] = { "p", "paste" },
  },

  t = {
    ["<C-v>"] = { "<C-\\><C-n>pa", "paste" },
  },
}

M.nvimtree = {
  n = {
    ["<C-w>"] = { "<cmd> NeoTreeRevealToggle <CR>", "toggle nvimtree" },
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
    ["\\"] = { "<cmd> Gitsigns toggle_current_line_blame <CR>", "git line blame" },
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
    ["<Leader>w"] = { "<cmd> HopWord <CR>", "hop any word" },
  },

  i = {
    ["ww"] = { "<cmd> HopWord <CR>", "hop any word" },
  },
}

M.lazygit = {
  n = {
    ["<Leader>git"] = { "<cmd> LazyGit <CR>", "lazygit" },
  },
}

M.nvimtest = {
  n = {
    ["test"] = { "<cmd> TestNearest <CR>", "run single test" },
  },
}

M.project = {
  n = {
    ["dir"] = { "<cmd> Telescope projects <CR>", "telescope projects" },
  }
}

-- more keybinds!

return M
