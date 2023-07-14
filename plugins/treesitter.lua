return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    auto_install = true,
  },

config= function()
require 'nvim-treesitter.install'.compilers = { 'zig' }
end,
  dependencies = {
    {
      "mrjones2014/nvim-ts-rainbow",
      config = function()
        require("nvim-treesitter.configs").setup {
          rainbow = {
            enable = true,
          },
        }
      end,
    },
    {
      "nvim-treesitter/playground",
      cmd = "TSPlaygroundToggle",
    },
  },
}
