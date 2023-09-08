
-- Plugin 'godlygeek/tabular'
-- Plugin 'preservim/vim-markdown'

return {

  {
    "preservim/vim-markdown",
    dependencies = {
      "godlygeek/tabular"
    },
    config = function()

      -- ---------------------------------------------
      -- MARKDOWN 
      -- ---------------------------------------------
      vim.g.markdown_fenced_languages = {'html', 'python', 'bash=sh', 'lua', 'vim', 'typescript', 'javascript' }

      -- disable header folding
      vim.g.vim_markdown_folding_disabled = 1

      -- do not use conceal feature, the implementation is not so good
      vim.g.vim_markdown_conceal = 0

      vim.g.markdown_minlines = 100

      -- disable math tex conceal feature
      vim.g.tex_conceal = ""
      vim.g.vim_markdown_math = 1

      -- support front matter of various format
      vim.g.vim_markdown_frontmatter = 1
      -- vim.g.vim_markdown_toml_frontmatter = 1  
      -- vim.g.vim_markdown_json_frontmatter = 1  

      -- disable default keybindings
      -- vim.g.vim_markdown_no_default_key_mappings = 1

      vim.g.vim_markdown_new_list_item_indent = 0

      vim.g.vim_markdown_auto_insert_bullets = 1

    end
  }
}
