return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    auto_install = true,
  },

  config = function()
    require("nvim-treesitter.install").compilers = { "zig" }
    require("nvim-treesitter.configs").setup {
      ensure_installed = {
        "bash",
        -- "c",
        -- "c_sharp",
        -- "cmake",
        -- "cpp",
        "css",
        "dockerfile",
        "git_config",
        "gitignore",
        "graphql",
        "html",
        "javascript",
        "json",
        -- "llvm",
        "lua",
        "make",
        "python",
        "sql",
        "svelte",
        "todotxt",
        "typescript",
        "yaml",
        -- "rust",
      },
    }
  end,
  dependencies = {
    {
      "mrjones2014/nvim-ts-rainbow",
      config = function()
        require("nvim-treesitter.configs").setup {
          rainbow = {
            enable = true,
            extened_mode = true,
            max_file_lines = nil,
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
