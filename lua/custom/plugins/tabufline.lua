local myButtons = function()
  local toggle_themeBtn = "%@TbToggle_theme@%#TbLineThemeToggleBtn#" .. vim.g.toggle_theme_icon .. "%X"
  local CloseAllBufsBtn = "%@TbCloseAllBufs@%#TbLineCloseAllBufsBtn#" .. " ㋡ CloseAll " .. "%X"
  return toggle_themeBtn .. CloseAllBufsBtn
end

-- local tabufline_modules = require "nvchad_ui.tabufline.modules"

return {
  buttons = function()
    return myButtons()
  end,
}
