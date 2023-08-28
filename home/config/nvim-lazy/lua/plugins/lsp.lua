
return {

  -- ---------------------------------------------
  -- MASON 
  -- ---------------------------------------------
  {
    "williamboman/mason.nvim",
    commit = "34b3d0d01dfeba0b869bedf32ae846ef63ad4bd1",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    commit = "2997f467881ac4faa6f8c5e7065e3a672297c8ad",
    config = function()
      require("mason-lspconfig").setup {
        ensure_installed = {
          "lua_ls",
          'tsserver',
          'eslint',
          'rust_analyzer',
          'pyright',
          'jsonls',
          'vale_ls'
        },
      }
    end
  },


  -- ---------------------------------------------
  -- NVIM LSPCONFIG 
  -- ---------------------------------------------
  {
    "neovim/nvim-lspconfig",
    commit = "a27356f1ef9c11e1f459cc96a3fcac5c265e72d6",
    config = function()
      -- Setup language servers.
      local lspconfig = require('lspconfig')
      lspconfig.pyright.setup {}
      lspconfig.tsserver.setup {}
      lspconfig.eslint.setup {}
      lspconfig.jsonls.setup {}
      lspconfig.vale_ls.setup {}
      lspconfig.lua_ls.setup {
        settings = {
          Lua = {
            runtime = {
              -- Tell the language server which version of Lua you're using
              -- (most likely LuaJIT in the case of Neovim)
              version = 'LuaJIT',
            },
            diagnostics = {
              -- Get the language server to recognize the `vim` global
              globals = {
                'vim',
                'require'
              },
            },
            workspace = {
              -- Make the server aware of Neovim runtime files
              -- library = vim.api.nvim_get_runtime_file("", true),
              -- disable notification question
              checkThirdParty = false, -- THIS IS THE IMPORTANT LINE TO ADD
            },
            -- Do not send telemetry data containing a randomized but unique identifier
            telemetry = {
              enable = false,
            },
          }
        }
      }
      lspconfig.rust_analyzer.setup {
        -- Server-specific settings. See `:help lspconfig-setup`
        settings = {
          ['rust-analyzer'] = {},
        }
      }

      -- Global mappings.
      -- See `:help vim.diagnostic.*` for documentation on any of the below functions
      vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
      vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
      vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
      vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)

      -- Use LspAttach autocommand to only map the following keys
      -- after the language server attaches to the current buffer
      vim.api.nvim_create_autocmd('LspAttach', {
        group = vim.api.nvim_create_augroup('UserLspConfig', {}),
        callback = function(ev)
          -- Enable completion triggered by <c-x><c-o>
          vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

          -- Buffer local mappings.
          -- See `:help vim.lsp.*` for documentation on any of the below functions
          local opts = { buffer = ev.buf }
          vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
          vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
          -- vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
          vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
          -- vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
          vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
          vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
          vim.keymap.set('n', '<space>wl', function()
            print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
          end, opts)
          vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
          vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
          vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
          vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
          vim.keymap.set('n', '<space>f', function()
            vim.lsp.buf.format { async = true }
          end, opts)
        end,
      })

      -- ---------------------------------------------
      -- DIAGNOSTICS 
      -- ---------------------------------------------
      vim.diagnostic.config({
        underline = true,
        signs = true,
        -- virtual_text = { spacing = 4, prefix = "❰" },
        -- virtual_text = { spacing = 4, prefix = "*" },
        -- virtual_text = false,
        -- float = {
        --     show_header = true,
        --     source = "if_many",
        --     border = "single",
        --     focusable = false,
        -- },
        update_in_insert = false,
        severity_sort = true,
      })

      -- vim.cmd([[ autocmd CursorHold * lua vim.diagnostic.open_float() ]])

      local signs = {
        Error = "",
        Warn = "",
        -- Hint = "",
        -- Info = "",
      }
      for type, icon in pairs(signs) do
        local hl = "DiagnosticSign" .. type
        vim.fn.sign_define(hl, {
          text = icon,
          texthl = hl,
        })
      end

    end
  },

  -- ---------------------------------------------
  -- NULL-LS
  -- ---------------------------------------------
  {
    "jose-elias-alvarez/null-ls.nvim",
    commit = "0010ea927ab7c09ef0ce9bf28c2b573fc302f5a7",
    config = function()
      local nulls = require("null-ls")

      nulls.setup({
        sources = {
          --
          -- FORMATTER
          --
          nulls.builtins.formatting.stylua, -- lua
          nulls.builtins.formatting.black, -- python
          nulls.builtins.formatting.shfmt, -- bash,sh,zsh
          nulls.builtins.formatting.sqlfluff.with({
            extra_args = { "--dialect", "postgres" },
          }), -- postgresql
          nulls.builtins.formatting.prettierd.with({
            generator_opts = {
              command = "prettierd",
              args = { "$FILENAME" },
              to_stdin = true,
            },
          }), -- css, html, js, json and other stuff (lol)
          nulls.builtins.formatting.goimports, -- golang
          nulls.builtins.formatting.phpcsfixer, -- php

          --
          -- DIAGNOSTICS
          --
          -- nulls.builtins.diagnostics.sqlfluff.with({
          --     extra_args = { "--dialect", "postgres" },
          -- }), -- postgres
        },
      })

      local function format()
        vim.lsp.buf.format({ async = true })
      end

      -- keymap
      vim.keymap.set("n", "<space>f", format, { desc = "LSP: Formats the current buffer" })

    end
  },
  -- ---------------------------------------------
  -- CMP 
  -- ---------------------------------------------
  {
    "hrsh7th/nvim-cmp",
    commit = "5dce1b778b85c717f6614e3f4da45e9f19f54435",
    version = false, -- last release is way too old
    -- event = "InsertEnter",
    dependencies = {
      { "hrsh7th/cmp-nvim-lsp",  commit = "44b16d11215dce86f253ce0c30949813c0a90765" },
      { "hrsh7th/cmp-buffer", commit = "3022dbc9166796b644a841a02de8dd1cc1d311fa" },
      { "hrsh7th/cmp-path", commit = "91ff86cd9c29299a64f968ebb45846c485725f23" },
      "saadparwaiz1/cmp_luasnip",
      { "hrsh7th/cmp-cmdline", commit = "8ee981b4a91f536f52add291594e89fb6645e451" }
    },
    config = function()
      -- Set up nvim-cmp.
      local cmp = require'cmp'

      cmp.setup({
        snippet = {
          -- REQUIRED - you must specify a snippet engine
          expand = function(args)
            -- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
            require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
            -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
            -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
          end,
        },
        window = {
          -- completion = cmp.config.window.bordered(),
          -- documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert({
          ['<C-b>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-e>'] = cmp.mapping.abort(),
          ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        }),
        sources = cmp.config.sources({
          { name = 'nvim_lsp' },
          -- { name = 'vsnip' }, -- For vsnip users.
          { name = 'luasnip' }, -- For luasnip users.
          -- { name = 'ultisnips' }, -- For ultisnips users.
          -- { name = 'snippy' }, -- For snippy users.
        }, {
            { name = 'buffer' },
          })
      })

      -- Set configuration for specific filetype.
      cmp.setup.filetype('gitcommit', {
        sources = cmp.config.sources({
          { name = 'git' }, -- You can specify the `git` source if [you were installed it](https://github.com/petertriho/cmp-git).
        }, {
            { name = 'buffer' },
          })
      })

      -- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
      cmp.setup.cmdline({ '/', '?' }, {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
          { name = 'buffer' }
        }
      })

      -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
      cmp.setup.cmdline(':', {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({
          { name = 'path' }
        }, {
            { name = 'cmdline' }
          })
      })
    end
  }


}


