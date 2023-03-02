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
      "            :h-                                  Nhy`               ",
      "           -mh.                           h.    `Ndho               ",
      "           hmh+                          oNm.   oNdhh               ",
      "          `Nmhd`                        /NNmd  /NNhhd               ",
      "          -NNhhy                      `hMNmmm`+NNdhhh               ",
      "          .NNmhhs              ```....`..-:/./mNdhhh+               ",
      "           mNNdhhh-     `.-::///+++////++//:--.`-/sd`               ",
      "           oNNNdhhdo..://++//++++++/+++//++///++/-.`                ",
      "      y.   `mNNNmhhhdy+/++++//+/////++//+++///++////-` `/oos:       ",
      " .    Nmy:  :NNNNmhhhhdy+/++/+++///:.....--:////+++///:.`:s+        ",
      " h-   dNmNmy oNNNNNdhhhhy:/+/+++/-         ---:/+++//++//.`         ",
      " hd+` -NNNy`./dNNNNNhhhh+-://///    -+oo:`  ::-:+////++///:`        ",
      " /Nmhs+oss-:++/dNNNmhho:--::///    /mmmmmo  ../-///++///////.       ",
      "  oNNdhhhhhhhs//osso/:---:::///    /yyyyso  ..o+-//////////:/.      ",
      "   /mNNNmdhhhh/://+///::://////     -:::- ..+sy+:////////::/:/.     ",
      "     /hNNNdhhs--:/+++////++/////.      ..-/yhhs-/////////::/::/`    ",
      "       .ooo+/-::::/+///////++++//-/ossyyhhhhs/:///////:::/::::/:    ",
      "       -///:::::::////++///+++/////:/+ooo+/::///////.::://::---+`   ",
      "       /////+//++++/////+////-..//////////::-:::--`.:///:---:::/:   ",
      "       //+++//++++++////+++///::--                 .::::-------::   ",
      "       :/++++///////////++++//////.                -:/:----::../-   ",
      "       -/++++//++///+//////////////               .::::---:::-.+`   ",
      "       `////////////////////////////:.            --::-----...-/    ",
      "        -///://////////////////////::::-..      :-:-:-..-::.`.+`    ",
      "         :/://///:///::://::://::::::/:::::::-:---::-.-....``/- -   ",
      "           ::::://::://::::::::::::::----------..-:....`.../- -+oo/ ",
      "            -/:::-:::::---://:-::-::::----::---.-.......`-/.      ``",
      "           s-`::--:::------:////----:---.-:::...-.....`./:          ",
      "          yMNy.`::-.--::..-dmmhhhs-..-.-.......`.....-/:`           ",
      "         oMNNNh. `-::--...:NNNdhhh/.--.`..``.......:/-              ",
      "        :dy+:`      .-::-..NNNhhd+``..`...````.-::-`                ",
      "                        .-:mNdhh:.......--::::-`                    ",
      "                           yNh/..------..`                          ",
      "                                                                    ",
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
    "go-debug-adapter"
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
