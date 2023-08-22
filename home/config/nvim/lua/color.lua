
-- -------------------------------------------------------
-- Theme
-- -------------------------------------------------------

-- local colorscheme = "nightfox"

-- TOKYONIGHT
-- local colorscheme = "tokyonight"
-- local colorscheme = "tokyonight-night"
-- local colorscheme = "tokyonight-storm"
-- local colorscheme = "tokyonight-moon"
-- vim.g.tokyonight_style = { 'quickfix', '__vista__', 'terminal' }

-- Solarized --
-- " set background=dark
-- " colorscheme solarized

--  Nightfox --
-- colorscheme nightfox
-- " colorscheme nordfox
-- " colorscheme carbonfox
-- " colorscheme terafox
-- " colorscheme duskfox

-- Gruvbox --
-- " set background=dark " or light if you want light mode
-- " colorscheme gruvbox
-- local colorscheme = "gruvbox"
-- vim.opt.background="dark"
-- Catppuccin --
-- " colorscheme catppuccin

-- Material --
-- " colorscheme material
-- " gruvbox material
-- " colorscheme gruvbox-material

-- Kaganawa
-- local colorscheme = "kanagawa-wave"
-- local colorscheme = "kanagawa-dragon"
-- vim.cmd("colorscheme kanagawa-wave")
-- vim.cmd("colorscheme kanagawa-dragon")
-- vim.cmd("colorscheme kanagawa-lotus")

-- Catppuccin
-- colorscheme catppuccin " catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
local colorscheme = "catppuccin"


local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  return
end


