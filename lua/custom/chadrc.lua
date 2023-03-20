local overrides = require "custom.configs.overrides"
---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "jellybeans",
  theme_toggle = { "oceanic-light", "jellybeans" },

  hl_override = highlights.override,
  hl_add = highlights.add,

  nvdash = overrides.nvdash,
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
