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
