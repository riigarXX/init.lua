-- Configurar los servidores LSP
local lspconfig = require 'lspconfig'
local servers = { "cssls", "html", "tsserver", "vuels", "lua_ls" }
for _, server in ipairs(servers) do
	lspconfig[server].setup {}
end
-- Configurar LSP Zero
local nvim_lsp = require 'lspconfig'
local on_attach = function(client, bufnr)
	require 'completion'.on_attach(client, bufnr)
end

nvim_lsp.tsserver.setup {
	on_attach = on_attach,
	filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" }
}

nvim_lsp.lua_ls.setup {
	on_attach = on_attach,
	filetypes = {
		"lua"
	}
}
nvim_lsp.vuels.setup {
	on_attach = on_attach,
	filetypes = {
		"vue"
	}
}
