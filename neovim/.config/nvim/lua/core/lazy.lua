local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
    "folke/which-key.nvim",
    { "folke/neoconf.nvim", cmd = "Neoconf" },
    "folke/neodev.nvim",
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.1',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {
        'rose-pine/neovim', name = 'rose-pine'
    },
    {
        -- Highlight, edit, and navigate code
        'nvim-treesitter/nvim-treesitter',
        dependencies = {
            'nvim-treesitter/nvim-treesitter-textobjects',
        },
        build = ":TSUpdate",
    },
    'nvim-treesitter/playground',
    {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    },
    -- Markdown writting
    {
        "iamcco/markdown-preview.nvim",
        -- ft = 'markdown',
        config = function()
            vim.fn["mkdp#util#install"]()
        end,
    },
    -- Useful status updates for LSP
    { 'j-hui/fidget.nvim',  tag = "legacy" },

    -- Programming related plugins
    'townk/vim-autoclose',                 --autoclose plugin
    'nvim-lualine/lualine.nvim',           -- Fancier statusline
    'lukas-reineke/indent-blankline.nvim', -- Add indentation guides even on blank lines
    'numToStr/Comment.nvim',               -- "gc" to comment visual regions/lines
    -- Navigation
    'ThePrimeagen/harpoon',                -- buffer navigation [GOAT]
    'mbbill/undotree',
    'tpope/vim-fugitive',
    'lewis6991/gitsigns.nvim',
    -- completion
    {
        "jose-elias-alvarez/null-ls.nvim",
        -- ft = { "python" },
        opts = function() return require("null-ls") end,
    },
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip',
    "rafamadriz/friendly-snippets",
    "williamboman/mason.nvim",
    "neovim/nvim-lspconfig",
    "williamboman/mason-lspconfig.nvim",

}

local opts = {
}

require("lazy").setup(plugins, opts)
