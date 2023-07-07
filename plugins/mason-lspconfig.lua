-- use mason-lspconfig to configure LSP installations
return {
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      automatic_installation = true,
      ensure_installed = {
        "angularls",
        "bashls",
        "cmake",
        "clangd",
        "cssls",
        "html",
        "marksman",
        "jsonls",
        "pyright",
        "sqlls",
        "lua_ls",
        "tsserver",
        "yamlls",
        "cssmodules_ls",
        "denols",
        "docker_compose_language_service",
        "dockerls",
        "eslint",
        "graphql",
        "helm_ls",
        "pylsp",
        "stylelint_lsp",
        "svelte",
        "tailwindcss",
        "vimls",
      },
    },
  },
  {
    "jay-babu/mason-null-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "williamboman/mason.nvim",
      "jose-elias-alvarez/null-ls.nvim",
    },
    config = function()
      require("mason-null-ls").setup({
        ensure_installed = {
          "black",
          "cmakelang",
          "cmakelint",
          "eslint_d",
          "firefox-debug-adapter",
          "fixjson",
          "gitlint",
          "json-to-struct",
          "misspell",
          "nginx-language-server",
          "nxls",
          "prettier",
          "prettierd",
          "reorder-python-imports",
          "rustywind",
          "shfmt",
          "sql-formatter",
          "stylelint",
          "vint",
          "yamlfix",
          "yamllint"
        }
      })
    end,
  }
}
