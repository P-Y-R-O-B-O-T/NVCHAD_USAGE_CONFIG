return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre' -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
  	"williamboman/mason.nvim",
  	opts = {
  		ensure_installed = {
                "lua-language-server", "stylua", "html-lsp", "css-lsp" , "prettier", "pyright", "ansible-language-server", "ansible-lint", "yaml-language-server", "yamlfix", "yamlfmt", "yamllint", "bash-language-server", "bash-debug-adapter", "clangd", "clang-format", "cmake-language-server", "cmakelang", "cmakelint", "docformatter", "docker-compose-language-service", "dockerfile-language-server", "go-debug-adapter", "gofumpt", "goimports", "golangci-lint", "golangci-lint-langserver", "golines", "gopls", "gospel", "gotests", "gotestsum", "helm-ls", "htmlbeautifier", "htmlhint", "json-lsp", "jsonlint", "markdown-oxide", "markdown-toc", "markdownlint", "markdownlint-cli2", "nginx-language-server", "terraform-ls"
  		},
  	},
  },
  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc", "html", "css", "yaml", "python", "go", "bash", "c", "cpp", "cmake", "dockerfile", "markdown", "markdown_inline", "json"
  		},
  	},
  },
}

