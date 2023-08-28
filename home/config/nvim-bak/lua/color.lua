
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

--  Nightfox --
local colorscheme = "nordfox"
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
-- local colorscheme = "kanagawa-wave"
-- "colorscheme kanagawa-wave")

-- Catppuccin
-- colorscheme catppuccin " catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
-- local colorscheme = "catppuccin"
-- local colorscheme = "catppuccin-latte"
-- local colorscheme = "catppuccin-frappe"
-- local colorscheme = "catppuccin-macchiato"
-- local colorscheme = "catppuccin-mocha"

-- Nord
-- local colorscheme = "nord"

-- Ayu
-- local colorscheme = "ayu"

-- Vim one
-- local colorscheme = "one"

-- Oceanic next
-- local colorscheme = "OceanicNext"

-- Solarized --
-- " set background=dark
-- vim.opt.background = 'dark'
-- local colorscheme = "solarized"
-- " colorscheme solarized


local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  return
end


