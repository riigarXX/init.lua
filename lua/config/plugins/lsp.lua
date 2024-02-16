-- Configurar los servidores LSP
local lspconfig = require'lspconfig'
local servers = {"cssls", "html","tsserver", "vuels" }
for _, server in ipairs(servers) do
    lspconfig[server].setup{}
end
-- Configurar LSP Zero
local nvim_lsp = require'lspconfig'
local on_attach = function(client, bufnr)
    require'completion'.on_attach(client, bufnr)
end

nvim_lsp.zls.setup {
    on_attach = on_attach,
    filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx", "vue", "css", "html", "json", "node" }
}

