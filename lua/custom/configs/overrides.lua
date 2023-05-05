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
  view = {
    hide_root_folder = false,
  },
  git = {
    enable = true,
    timeout = 1500,
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

M.nvdash = {
  load_on_startup = true,

  header = {
    -- [[             ,----------------,              ,---------,]],
    -- [[        ,-----------------------,          ,"        ,"|]],
    -- [[      ,"                      ,"|        ,"        ,"  |]],
    -- [[     +-----------------------+  |      ,"        ,"    |]],
    -- [[     |  .-----------------.  |  |     +---------+      |]],
    -- [[     |  |    I L O V E    |  |  |     | -==----'|      |]],
    -- [[     |  | T E R M I N A L |  |  |     |         |      |]],
    -- [[     |  |       <3        |  |  |/----|`---=    |      |]],
    -- [[     |  |   N E O V I M   |  |  |   ,/|==== ooo |      ;]],
    -- [[     |  |  C:\>_          |  |  |  // |(((( [33]|    ," ]],
    -- [[     |  `-----------------'  |," .;'| |((((     |  ,"   ]],
    -- [[     +-----------------------+  ;;  | |         |,"     ]],
    -- [[        /_)______________(_/  //'   | +---------+       ]],
    -- [[   ___________________________/___  `,                  ]],
    -- [[  /  oooooooooooooooo  .o.  oooo /,   \,"-----------    ]],
    -- [[ / ==ooooooooooooooo==.o.  ooo= //   ,`\--{)B     ,"    ]],
    -- [[/_==__==========__==_ooo__ooo=_/'   /___________,"      ]],
    -- [[`-----------------------------'                         ]],
    -- [[             _,........__                                              ]],
    -- [[            ,-'            "`-.                                        ]],
    -- [[          ,'                   `-.                                     ]],
    -- [[        ,'                        \                                    ]],
    -- [[      ,'                           .                                   ]],
    -- [[      .'\               ,"".       `                                   ]],
    -- [[     ._.'|             / |  `       \                                  ]],
    -- [[     |   |            `-.'  ||       `.                                ]],
    -- [[     |   |            '-._,'||       | \                               ]],
    -- [[     .`.,'             `..,'.'       , |`-.                            ]],
    -- [[     l                       .'`.  _/  |   `.                          ]],
    -- [[     `-.._'-   ,          _ _'   -" \  .     `                         ]],
    -- [[`."""""'-.`-...,---------','         `. `....__.                       ]],
    -- [[.'        `"-..___      __,'\          \  \     \                      ]],
    -- [[\_ .          |   `""""'    `.           . \     \                     ]],
    -- [[  `.          |              `.          |  .     L                    ]],
    -- [[    `.        |`--...________.'.        j   |     |                    ]],
    -- [[      `._    .'      |          `.     .|   ,     |                    ]],
    -- [[         `--,\       .            `7""' |  ,      |                    ]],
    -- [[            ` `      `            /     |  |      |    _,-'"""`-.      ]],
    -- [[             \ `.     .          /      |  '      |  ,'          `.    ]],
    -- [[              \  v.__  .        '       .   \    /| /              \   ]],
    -- [[               \/    `""\"""""""`.       \   \  /.''                |  ]],
    -- [[                `        .        `._ ___,j.  `/ .-       ,---.     |  ]],
    -- [[                ,`-.      \         ."     `.  |/        j     `    |  ]],
    -- [[               /    `.     \       /         \ /         |     /    j  ]],
    [[                      .-.                            ]],
    [[         heehee      /aa \_                          ]],
    [[                   __\-  / )                 .-.     ]],
    [[         .-.      (__/    /        haha    _/oo \    ]],
    [[       _/ ..\       /     \               ( \v  /__  ]],
    [[      ( \  u/__    /       \__             \/   ___) ]],
    [[       \    \__)   \_.-._._   )  .-.       /     \   ]],
    [[       /     \             `-`  / ee\_    /       \_ ]],
    [[    __/       \               __\  o/ )   \_.-.__   )]],
    [[   (   _._.-._/     hoho     (___   \/           '-' ]],
    [[jgs '-'                        /     \               ]],
    [[                             _/       \    teehee    ]],
    [[                            (   __.-._/              ]],
    -- [[      .                               ]],
    -- [[        ('                            ]],
    -- [[        '|                            ]],
    -- [[        |'                            ]],
    -- [[       [::]                           ]],
    -- [[       [::]                           ]],
    -- [[       [::]    _......_               ]],
    -- [[       [::].-'      _.-`.             ]],
    -- [[       [:.'    .-. '-._.-`.           ]],
    -- [[       [/ /\   |  \        `-.        ]],
    -- [[       / / |   `-.'      .-.   `-.    ]],
    -- [[      /  `-'            (   `.    `.  ]],
    -- [[     |           /\      `-._/      \ ]],
    -- [[     '    .'\   /  `.           _.-'| ]],
    -- [[    /    /  /   \_.-'        _.':;:/  ]],
    -- [[  .'     \_/             _.-':;_.-'   ]],
    -- [[ /   .-.             _.-' \;.-'       ]],
    -- [[/   (   \       _..-'     |           ]],
    -- [[\    `._/  _..-'    .--.  |           ]],
    -- [[ `-.....-'/  _ _  .'    '.|           ]],
    -- [[          | |_|_| |      | \  (o)     ]],
    -- [[     (o)  | |_|_| |      | | (\'/)    ]],
    -- [[    (\'/)/  ''''' |     o|  \;:;/     ]],
    -- [[     :;  |        |      |  |/)       ]],
    -- [[ LGB  ;: `-.._    /__..--'\.' ;:      ]],
    -- [[          :;  `--' :;   :             ]],
  },

  buttons = {
      { "㋡ Recent Projects", "Spc p", "Telescope projects" },
      { "  Find File", "Spc f f", "Telescope find_files" },
      { "  Recent Files", "Spc f o", "Telescope oldfiles" },
      { "  Find Word", "Spc f w", "Telescope live_grep" },
      { "  Bookmarks", "Spc b m", "Telescope marks" },
      { "  Themes", "Spc t h", "Telescope themes" },
      { "  Mappings", "Spc c h", "NvCheatsheet" },
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

-- M.gitsigns = {
--   current_line_blame = true, -- Toggle with `:Gitsigns toggle_current_line_blame`
--   current_line_blame_opts = {
--     virt_text = true,
--     virt_text_pos = "eol", -- 'eol' | 'overlay' | 'right_align'
--     delay = 250,
--     ignore_whitespace = false,
--   },
-- }

return M
