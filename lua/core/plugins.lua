-- local ensure_packer = function()
--   local fn = vim.fn
--   local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
--   if fn.empty(fn.glob(install_path)) > 0 then
--     fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
--     vim.cmd [[packadd packer.nvim]]
--     return true
--   end
--   return false
-- end
-- local packer_bootstrap = ensure_packer()

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

require('lazy').setup({
  -- use 'wbthomason/packer.nvim'
--================== PLUGINS BEGIN HERE =====================
    {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    },

    {
      'lewis6991/gitsigns.nvim', -- git diffs in sign column.
      -- version = 'release', -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
    },

    {
        'nvim-telescope/telescope.nvim',
        version = '0.1.0',
        dependencies = { { 'nvim-lua/plenary.nvim' } }
    },

    -- {
    --     "akinsho/toggleterm.nvim", version = '*', config = function()
    --     require("toggleterm").setup()
    --     end
    -- },

    {
        "williamboman/mason.nvim", -- LSP servers packet manager
        "williamboman/mason-lspconfig.nvim", -- unites lspconfig and mason
        "neovim/nvim-lspconfig", -- sets up config to enable comms between nvim and my lsp's
    },

    -- bufferline to bonito
    {
        'akinsho/bufferline.nvim',
        version = "v3.*",
        dependencies = 'nvim-tree/nvim-web-devicons'
    },

    -- random shit
    'rafi/awesome-vim-colorschemes',
    'nvim-tree/nvim-tree.lua',
    'nvim-tree/nvim-web-devicons',
    'nvim-lualine/lualine.nvim',
    'nvim-treesitter/nvim-treesitter', -- syntax highlighting
    -- 'lewis6991/impatient.nvim', -- decrease load time
    'christoomey/vim-tmux-navigator',
    -- 'stevearc/vim-arduino',

    -- code completion
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-nvim-lsp",
    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",
    "rafamadriz/friendly-snippets",
    "windwp/nvim-ts-autotag",

--================== PLUGINS END HERE =====================
})
