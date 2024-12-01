-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'mrcjkb/haskell-tools.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    version = '^4', -- Recommended
    lazy = false, -- This plugin is already lazy
    init = function()
      vim.g.haskell_tools = {}
    end,
  },
}
