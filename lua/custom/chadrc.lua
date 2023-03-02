local M = {}

M.plugins = require "custom.plugins"

-- M.options = {
--   nvChad = {
--     update_branch = "dev",
--   },
-- }

M.ui = {
  -- theme stuff
  theme = "gatekeeper",
  transparency = false,
  theme_toggle = { "gatekeeper", "one_light" },

  -- hl_override = require("custom.highlights").overriden_hlgroups,
}

M.mappings = require "custom.mappings"

return M
