# NVCHAD STARTER USAGE CONFIG




## INSTALLATION OF DEPENDENCIES FOR NVCHAD_v2.5
* Backup the default config and the continue
* Install all nerd fonts
### LATEST VERSION OF NODE
* [Source1](https://github.com/williamboman/mason-lspconfig.nvim/issues/273)
* [Source2](https://github.com/nodesource/distributions#debian-and-ubuntu-based-distributions)
```bash
curl -fsSL https://deb.nodesource.com/setup_current.x | sudo -E bash - && sudo apt-get update && sudo apt-get install -y nodejs
```
* Install ripgrep debian or the compatible from [Ripgrep Repo](https://github.com/BurntSushi/ripgrep?tab=readme-ov-file#installation) 
* Also installl latest versions of rust and cargo



## EDITED BASE CONFIG FOR STARTER
* nvim/lua/configs/lspconfig.lua
* See list of all language servers at [Nvim Language servers](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md)
* See mason registry at [Mason Github](https://github.com/mason-org/mason-registry/tree/main/packages) 
```lua
-- EXAMPLE 
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "html", "cssls", "pyright" , "ansiblels", "yamlls", "bashls", "clangd", "cmake", "docker_compose_language_service", "dockerls", "golangci_lint_ls", "gopls", "helm_ls", "htmx", "java_language_server", "jsonls", "markdown_oxide", "mojo", "nginx_language_server", "qml_lsp", "terraform_lsp", "terraformls" }

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end
```

* nvim/lua/plugins/init.lua
* See TreeSitter parsers at [Tree Sitter Parsers](https://tree-sitter.github.io/tree-sitter/) 
```lua
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
  			"vim", "lua", "vimdoc", "html", "css", "yaml", "python", "go", "bash", "c", "cpp", "cmake", "dockerfile", "markdown", "markdown inline", "json"
  		},
  	},
  },
}
```




# RESOURECES
* Visit official docs at [NV_CHAD](https://nvchad.com/)

* [Youtube](https://www.youtube.com/watch?v=Mtgo-nP_r8Y)
* [Youtube](https://www.youtube.com/watch?v=stqUbv-5u2s)
* [Python Setup Youtube](https://www.youtube.com/watch?v=4BnVeOUeZxc)
* [Go Setup Youtube](https://www.youtube.com/watch?v=i04sSQjd-qo)
