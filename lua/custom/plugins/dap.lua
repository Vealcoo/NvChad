local adapters = { "go" } --list your adapters here

for _, adapter in ipairs(adapters) do
  require("custom.plugins.dap_configs." .. adapter)
end
