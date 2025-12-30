require("nvchad.configs.lspconfig").defaults()

local nvlsp = require "nvchad.configs.lspconfig"

-- Setup HTML and CSS LSP servers
local servers = { "html", "cssls", "emmet_ls" }

for _, lsp in ipairs(servers) do
  local config = {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }

  -- Add specific filetypes for emmet_ls
  if lsp == "emmet_ls" then
    config.filetypes = { "html", "css", "scss", "javascript", "javascriptreact", "typescript", "typescriptreact", "vue" }
  end

  vim.lsp.config[lsp] = config
end

vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
