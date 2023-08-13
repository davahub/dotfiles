require'lspconfig'.lua_ls.setup{}

local lsp = require('lsp-zero')

lsp.preset("recommended")

lsp.ensure_installed({
    'tsserver',
    'eslint',
    'rust_analyzer'
})


local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-Space>'] = cmp.mapping.complete()
})

lsp.setup_nvim_cmp({
    mapping = cmp_mappings
})

-- lsp.on_attach(function(client, bufnr)
--   -- see :help lsp-zero-keybindings
--   -- to learn the available actions
--   lsp.default_keymaps({buffer = bufnr})
-- end)


lsp.on_attach(function(client, bufnr)
    local opts = {buffer = bufnr, remap = true}
    lsp.default_keymaps({buffer = bufnr, preserve_mappings = true })
    
    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)

    vim.keymap.set("n", "K", "6k")
    vim.keymap.set("v", "K", "6k")
-- vnoremap K 6k
-- nnoremap K 6k
end)

-- (Optional) Configure lua language server for neovim
-- require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()
