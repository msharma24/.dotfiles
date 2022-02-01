call plug#begin('~/.config/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Syntax Helpers
Plug 'hashivim/vim-terraform'
Plug 'windwp/nvim-autopairs'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'lewis6991/spellsitter.nvim'
Plug 'tpope/vim-commentary'
Plug 'folke/trouble.nvim'
Plug 'folke/lsp-colors.nvim'

" Snippets
Plug 'honza/vim-snippets'
"Plug 'SirVer/ultisnips'

" Themes
Plug 'navarasu/onedark.nvim'
Plug 'tiagovla/tokyodark.nvim'
Plug 'glepnir/zephyr-nvim'
Plug 'ellisonleao/gruvbox.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'EdenEast/nightfox.nvim'
Plug 'bluz71/vim-moonfly-colors'

" File navigation
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'mbbill/undotree'
Plug 'akinsho/toggleterm.nvim'


call plug#end()
