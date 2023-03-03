-- overriding default plugin configs!

local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "html",
    "css",
    "javascript",
    "json",
    "toml",
    "markdown",
    "c",
    "bash",
    "lua",
    "norg",
    "tsx",
    "typescript",
    "go",
  },
}

M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

M.blankline = {
  filetype_exclude = {
    "help",
    "terminal",
    "alpha",
    "packer",
    "lspinfo",
    "TelescopePrompt",
    "TelescopeResults",
    "nvchad_cheatsheet",
    "lsp-installer",
    "norg",
    "",
  },
}

M.alpha = {
  header = {
    val = {
      [[             ,----------------,              ,---------,]],
      [[        ,-----------------------,          ,"        ,"|]],
      [[      ,"                      ,"|        ,"        ,"  |]],
      [[     +-----------------------+  |      ,"        ,"    |]],
      [[     |  .-----------------.  |  |     +---------+      |]],
      [[     |  |    I L O V E    |  |  |     | -==----'|      |]],
      [[     |  | T E R M I N A L |  |  |     |         |      |]],
      [[     |  |       <3        |  |  |/----|`---=    |      |]],
      [[     |  |   N E O V I M   |  |  |   ,/|==== ooo |      ;]],
      [[     |  |  C:\>_          |  |  |  // |(((( [33]|    ,"]],
      [[     |  `-----------------'  |," .;'| |((((     |  ,"]],
      [[     +-----------------------+  ;;  | |         |,"]],
      [[        /_)______________(_/  //'   | +---------+]],
      [[   ___________________________/___  `,]],
      [[  /  oooooooooooooooo  .o.  oooo /,   \,"-----------]],
      [[ / ==ooooooooooooooo==.o.  ooo= //   ,`\--{)B     ,"]],
      [[/_==__==========__==_ooo__ooo=_/'   /___________,"]],
      [[`-----------------------------']],
    },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "vue-language-server",
    "prettier",
    -- "emmet-ls",
    "json-lsp",
    "tailwindcss-language-server",

    -- shell
    "shfmt",
    "shellcheck",

    -- backend
    "sqls",
    "sql-formatter",
    "gopls",
    "goimports",
    "go-debug-adapter",
  },
}

M.gitsigns = {
  current_line_blame = true, -- Toggle with `:Gitsigns toggle_current_line_blame`
  current_line_blame_opts = {
    virt_text = true,
    virt_text_pos = "eol", -- 'eol' | 'overlay' | 'right_align'
    delay = 250,
    ignore_whitespace = false,
  },
}

return M
