local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = {
  "html",
  "cssls",
  "clangd",
  "rust_analyzer",
  "tsserver",
  "tailwindcss",
  "bashls",
  "pyright",
  "volar",
  "cmake",
  "asm_lsp",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.clangd.setup {
  on_attach = function(client, bufnr)
    client.server_capabilities.sigmatureHelpProvider = false
    on_attach(client, bufnr)
  end,
  capabilities = capabilities,
}

-- Check file types, should only be vue
-- lspconfig.volar.setup {
--   on_attach = function (client, bufnr)
--   end
-- }
