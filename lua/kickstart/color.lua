require('noirbuddy').setup {

  colors = {
    noir_0 = '#ffefff', -- `noir_0` is light for dark themes, and dark for light themes
    noir_1 = '#f5f5f5',
    noir_2 = '#d5d5d5',
    noir_3 = '#b4b4b4',
    noir_4 = '#a7a7a7',
    noir_5 = '#949494',
    noir_6 = '#737373',
    noir_7 = '#535353',
    noir_8 = '#323232',
    noir_9 = '#212121', -- `noir_9` is dark for dark themes, and light for light themes
    diagnostic_error = '#ec0034',
    diagnostic_warning = '#ff7700',
    diagnostic_info = '#d5d5d5',
    diagnostic_hint = '#f5f5f5',
    diff_add = '#f5f5f5',
    diff_change = '#737373',
    diff_delete = '#ec0034',
  },

  styles = {
    italic = false,
    bold = false,
    underline = false,
    undercurl = false,
  },

}

-- Require colorbuddy...
local Color, colors, Group, groups, styles = require('colorbuddy').setup {}

-- Override specific highlight groups...
Group.new('TelescopeTitle', colors.primary)
Group.new('TelescopeBorder', colors.secondary)
Group.new('CursorLineNr', colors.primary, colors.noir_9)
Group.new('Searchlight', nil, colors.secondary)
Group.new('@comment', colors.noir_7)
Group.new('@punctuation', colors.noir_2)

-- Add font styles to highlight groups...
Group.new('@constant', colors.noir_2)
Group.new('@method', colors.noir_0)

-- Link highlight groups...
Group.link('SignifySignAdd', groups.DiffAdd)
Group.link('SignifySignChange', groups.DiffChange)
Group.link('SignifySignDelete', groups.DiffDelete)
