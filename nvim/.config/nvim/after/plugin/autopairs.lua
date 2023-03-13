local autopairs = require("nvim-autopairs")
autopairs.setup {}

local autotag = require('nvim-ts-autotag')
autotag.setup()

require('gitsigns').setup()
