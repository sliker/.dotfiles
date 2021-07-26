require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    disable = {},
  },
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.used_by = { "javascript", "typescript.tsx" }