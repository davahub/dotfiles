
return {
  {
    "nvim-treesitter/nvim-treesitter",
    version = false, -- last release is way too old and doesn't work on Windows
    build = ":TSUpdate",
    commit = "bae2c1824fb9297b044fbb58fc3b81ba79ed8b75",
    config = function()
      require'nvim-treesitter.configs'.setup {
        -- A list of parser names, or "all" (the five listed parsers should always be installed)
        ensure_installed = {
          "javascript",
          "typescript",
          "c",
          "lua",
          "vim",
          "vimdoc",
          "query",
          "tsx",
          "toml",
          "fish",
          "php",
          "json",
          "yaml",
          "css",
          "html",
          "lua",
          "markdown",
          "markdown_inline"
        },

        -- Install parsers synchronously (only applied to `ensure_installed`)
        sync_install = false,

        -- Automatically install missing parsers when entering buffer
        -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
        auto_install = true,

        highlight = {
          enable = true,

          -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
          -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
          -- Using this option may slow down your editor, and you may see some duplicate highlights.
          -- Instead of true it can also be a list of languages
          additional_vim_regex_highlighting = false,
        },
        indent = {
          enable = true,
          disable = {},
        },
        autotag = {
          enable = true,
        },
      }
    end
  },
  {
    "nvim-treesitter/playground",
    commit = "429f3e76cbb1c59fe000b690f7a5bea617b890c0"
  }
}

