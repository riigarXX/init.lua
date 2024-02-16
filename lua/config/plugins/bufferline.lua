require('bufferline').setup {
  options = {
    mode = 'buffers',
    offsets = {
      {filetype = 'NvimTree'}
    },
    buffer_close_icon = '󰅚',
  },
  highlights = {
    buffer_selected = {
      italic = false
    },
    indicator_selected = {
      fg = {attribute = 'fg', highlight = 'Function'},
      italic = false
    }
 }
}
