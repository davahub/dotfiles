
return {
  {
    "L3MON4D3/LuaSnip",
    commit = "c4d6298347f7707e9757351b2ee03d0c00da5c20",
    config = function()
      local ls = require("luasnip")
      local s = ls.snippet
      local sn = ls.snippet_node
      local t = ls.text_node
      local i = ls.insert_node
      local f = ls.function_node
      local c = ls.choice_node
      local d = ls.dynamic_node
      local r = ls.restore_node
      local l = require("luasnip.extras").lambda
      local rep = require("luasnip.extras").rep
      local p = require("luasnip.extras").partial
      local m = require("luasnip.extras").match
      local n = require("luasnip.extras").nonempty
      local dl = require("luasnip.extras").dynamic_lambda
      local fmt = require("luasnip.extras.fmt").fmt
      local fmta = require("luasnip.extras.fmt").fmta
      local types = require("luasnip.util.types")
      local conds = require("luasnip.extras.conditions")
      local conds_expand = require("luasnip.extras.conditions.expand")

      -- Every unspecified option will be set to the default.
      ls.setup({
        history = true,
        -- Update more often, :h events for more info.
        update_events = "TextChanged,TextChangedI",
        -- Snippets aren't automatically removed if their text is deleted.
        -- `delete_check_events` determines on which events (:h events) a check for
        -- deleted snippets is performed.
        -- This can be especially useful when `history` is enabled.
        delete_check_events = "TextChanged",
        ext_opts = {
          [types.choiceNode] = {
            active = {
              virt_text = { { "choiceNode", "Comment" } },
            },
          },
        },
        -- treesitter-hl has 100, use something higher (default is 200).
        ext_base_prio = 300,
        -- minimal increase in priority.
        ext_prio_increase = 1,
        -- enable_autosnippets = true,
        -- mapping for cutting selected text so it's usable as SELECT_DEDENT,
        -- SELECT_RAW or TM_SELECTED_TEXT (mapped via xmap).
        store_selection_keys = "<Tab>",
        -- luasnip uses this function to get the currently active filetype. This
        -- is the (rather uninteresting) default, but it's possible to use
        -- eg. treesitter for getting the current filetype by setting ft_func to
        -- require("luasnip.extras.filetype_functions").from_cursor (requires
        -- `nvim-treesitter/nvim-treesitter`). This allows correctly resolving
        -- the current filetype in eg. a markdown-code block or `vim.cmd()`.
        ft_func = function()
          return vim.split(vim.bo.filetype, ".", true)
        end,
      })

      ls.add_snippets("all", {
        -- trigger is `fn`, second argument to snippet-constructor are the nodes to insert into the buffer on expansion.
        s("fn", {
          -- Simple static text.
          t("//Parameters: "),
          -- function, first parameter is the function, second the Placeholders
          -- whose text it gets as input.
          f(copy, 2),
          t({ "", "function " }),
          -- Placeholder/Insert.
          i(1),
          t("("),
          -- Placeholder with initial text.
          i(2, "int foo"),
          -- Linebreak
          t({ ") {", "\t" }),
          -- Last Placeholder, exit Point of the snippet.
          i(0),
          t({ "", "}" }),
        }),
        s("dl2", {
          i(1, "sample_text"),
          i(2, "sample_text_2"),
          t({ "", "" }),
          dl(3, l._1:gsub("\n", " linebreak ") .. l._2, { 1, 2 }),
        }),
        s("dl2", {
          i(1, "sample_text"),
          i(2, "sample_text_2"),
          t({ "", "" }),
          dl(3, l._1:gsub("\n", " linebreak ") .. l._2, { 1, 2 }),
        }),
      }, {
          key = "all",
        })

      require("luasnip.loaders.from_vscode").load({ paths = { "/home/dava/.config/nvim/my_snippets" } }) -- Load snippets from my-snippets folder
      -- You can also use lazy loading so you only get in memory snippets of languages you use
      require("luasnip.loaders.from_vscode").lazy_load()

      vim.keymap.set({"i"}, "<A-k>", function() ls.expand() end, {silent = true})
      -- tab completion is define in lsp.lua cmp
      vim.keymap.set({"i", "s"}, "<A-l>", function() ls.jump( 1) end, {silent = true})
      vim.keymap.set({"i", "s"}, "<A-n>", function() ls.jump( 1) end, {silent = true})
      -- vim.keymap.set({"i", "s"}, "<tab>", function() ls.jump( 1) end, {silent = true})
      vim.keymap.set({"i", "s"}, "<C-P>", function() ls.jump(-1) end, {silent = true})
    end,
  }
}



