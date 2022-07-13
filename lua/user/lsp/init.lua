local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

require("user.lsp.configs")
require("user.lsp.null-ls")
require("user.lsp.trouble")
require("user.lsp.saga")
require("user.lsp.handlers").setup()
