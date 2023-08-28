
return {
  {
    "luukvbaal/statuscol.nvim",
    commit = "9f1ff2dcf614544c5022e876d83b4894c1944e87",
    config = function()
      local builtin = require("statuscol.builtin")
      require("statuscol").setup({
        relculright = true,
        segments = {
          { text = { builtin.foldfunc }, click = "v:lua.ScFa" },
          { text = { "%s" }, click = "v:lua.ScSa" },
          { text = { builtin.lnumfunc, " " }, click = "v:lua.ScLa" },
        }
      })
    end
  }
}

