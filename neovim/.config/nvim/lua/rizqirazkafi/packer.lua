-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'morhetz/gruvbox'
   -- A better status line
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use 'ryanoasis/vim-devicons'
  use 'kovetskiy/sxhkd-vim'
  use {
      'nvim-treesitter/nvim-treesitter',
      run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  } 
  use {'junegunn/fzf',
    run = '{ -> fzf#install() }'
  }
  use 'junegunn/fzf.vim'
  use {'neoclide/coc.nvim', branch = 'release'}
  use 'tpope/vim-commentary'
  use 'somini/vim-autoclose'
  use 'lervag/vimtex'
  -- Markdown
  use 'hallison/vim-markdown'
  --Flutter
  use 'dart-lang/dart-vim-plugin'
  use 'thosakwe/vim-flutter'
  use 'honza/vim-snippets'
  use 'natebosch/dartlang-snippets'
  use 'tpope/vim-projectionist'
  -- use 'natebosch/vim-lsc'
  -- use 'natebosch/vim-lsc-dart'

end)
