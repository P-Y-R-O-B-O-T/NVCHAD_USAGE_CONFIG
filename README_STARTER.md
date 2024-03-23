# NVCHAD STARTER USAGE CONFIG




## INSTALLATION OF DEPENDENCIES FOR NVCHAD_v2.5
* Backup the default config and the continue
* Install all nerd fonts
### Install latest version of node
* [Source1](https://github.com/williamboman/mason-lspconfig.nvim/issues/273)
* [Source2](https://github.com/nodesource/distributions#debian-and-ubuntu-based-distributions)
```bash
curl -fsSL https://deb.nodesource.com/setup_current.x | sudo -E bash - && sudo apt-get update && sudo apt-get install -y nodejs
```



## CONTROLS
### THEME
* Change Theme : `<leader> t h`


### SYSTAX HIGHLIGHT (TREESITTER)
* Install New Programming Language : `:TSInatall python3 c cpp java html markdown css json go yaml js`


### INSTALL NEW LSP
* `:Mason`, then follow help for installing and uninstalling


### FILE TREE
* TOGGLE : `ctrl + n`
* Mark a file : `m` while file tree is in focus
* Create a new file : `a` while file tree is in focus
* Copy a file : `c` while file tree is in focus
* Paste a file : `p` while file tree is in focus
* Rename a file : `r` while file in in focus


### FILE NAVIGATION
* Search a file : `<leader> f f`
* Seaach in open buffers : `<leader> f b`


### CYCLE THROUGH OPEN BUFFERS
* Clockwise : `<tab>`
* Anticlockwise : `<shift> + <tab>`


### OPEN TERMINAL
* Horizontal : `<leader> h`
* Vertical : `<leader> v`


### WINDOW NAVIGATION
* Split window vertically : `:vsp` 
* `ctrl h`
* `ctrl j`
* `ctrl k`
* `ctrl l`


### VIEW CHEATSHEET
* TOGGLE : `<leader> c h`


### SEE FOLLOW UP COMMANDS
* Press `<leader>` key and wait for a second


### AUTOCOMPLETION USING NORMAL EXISTING WORDS
* Be in insert mode : `ctrl + n`


### INSTALL PACKAGES IN NVCHAD
* Installs all required packages specified in scripts : `:MasonInstallAll`
* Install packages as per need : `:Mason`



## EDITED BASE CONFIG FOR STARTER
* nvim/lua/configs/lspconfig.lua
* See list of all language servers at [Nvim Language servers](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md)
```lua
-- EXAMPLE 
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "html", "cssls", "pyright" , "ansiblels", "yamlls", "arduino_language_server", "asm_lsp", "bashls", "biome", "clangd", "cmake",
                  "dagger", "dartls", "docker_compose_language_service", "dockerls", "gopls", "graphql", "glslls", "golandci_lint_ls", "gopls",
                  "helm_ls", "html", "htmx", "java_language_server", "jinja_lsp", "jqls", "jsonls", "jsonnet_ls", "markdown_oxide", "marksman",
                  "matlab_ls", "mojo", "nelua_lsp", "nginx_language_server", "nickel_ls", "pico8_ls", "postgres_lsp", "qml_lsp", "r_language_server",
                  "ruby_ls", "rust_analyzer", "syntax_tree", "terraform_lsp", "terraformls" }

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
  			"lua-language-server", "stylua",
  			"html-lsp", "css-lsp" , "prettier",
        "pyright"
  		},
  	},
  },
  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
        "html", "css"
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
