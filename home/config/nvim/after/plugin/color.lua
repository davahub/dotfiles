
-- -------------------------------------------------------
-- Theme
-- -------------------------------------------------------

local colorscheme = "nightfox"

-- -- Tokyo night --
-- vim.g.tokyonight_style = 'storm'
-- vim.g.tokyonight_style = 'day'
-- vim.g.tokyonight_style = 'moon'
-- vim.g.tokyonight_style = 'night'
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

-- Catppuccin --
-- " colorscheme catppuccin

-- Material --
-- " colorscheme material
-- " gruvbox material
-- " colorscheme gruvbox-material


local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  return
end

