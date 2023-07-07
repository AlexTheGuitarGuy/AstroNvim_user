return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    auto_install = true,
  },
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
