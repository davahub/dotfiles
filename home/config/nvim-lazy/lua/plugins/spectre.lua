
return {
  {
    "nvim-pack/nvim-spectre",
    commit = "411cee67fe3f8242023eb8d9edafefbbfb2d06f1",
    enabled = false,
    config = function()
      require('spectre').setup()
    end
  }
}
