local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require("rizqirazkafi.lsp.lsp-installer")
require("rizqirazkafi.lsp.handlers").setup()
