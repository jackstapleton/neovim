-- lua/nomura

local settings = {
  bold = false,
  italic = false,
  undercurl = false,
  underline = false,
  -- inverse = true,
  -- improved_strings = false,
  -- improved_warnings = false,
  -- invert_signs = false,
  -- invert_selection = false,
  -- invert_tabline = false,
  italicize_comments = false,
  -- italicize_strings = false,
  -- invert_intend_guides = false,
}

-- resetting default gruvbox values
for k, val in pairs(settings) do
  local key = "gruvbox_" .. k
  if vim.g[key] == nil then
    vim.g[key] = val
  end
end

vim.cmd "colorscheme gruvbox"
