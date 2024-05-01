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

--================== PLUGINS BEGIN HERE =====================
    {
        'numToStr/Comment.nvim',
         keys = {
          { "gcc", "", desc = "comment" },
        },
        lazy = true,
        config = function()
            require('Comment').setup()
        end
    },

    -- note taking
    {
        'vimwiki/vimwiki',
        lazy = true,
        keys = {
            { "<leader>ww", ":VimwikiIndex<CR>", desc = "wiki" },
            { "<leader>wt", ":VimwikiTabIndex<CR>", desc = "wiki" },
            { "<leader>wi", ":VimwikiDiaryIndex<CR>", desc = "wiki" },
            { "<leader>wd", ":VimwikiMakeDiaryNote<CR>", desc = "wiki" },
        },
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
    -- 'rafi/awesome-vim-colorschemes',
    'tomasr/molokai',
    'ellisonleao/gruvbox.nvim',
    'nvim-tree/nvim-tree.lua',
    'nvim-lualine/lualine.nvim',
    'nvim-treesitter/nvim-treesitter', -- syntax highlighting
    {
        'christoomey/vim-tmux-navigator',
        lazy = true,
        keys = {
            { "<C-l>", "", desc = "l" },
            { "<C-k>", "", desc = "k" },
            { "<C-j>", "", desc = "j" },
            { "<C-h>", "", desc = "k" },
        },
    },

    -- COPILOTO AJJAXD
    "github/copilot.vim",

    -- code completion
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-nvim-lsp",
    "saadparwaiz1/cmp_luasnip",
    "rafamadriz/friendly-snippets",
    {
        "L3MON4D3/LuaSnip",
        lazy = true,
        keys = {
            { "!s", "", desc = "luasnip" },
        },
    },

    {
        "windwp/nvim-ts-autotag",
        lazy = true,
        keys = {
            { "!a", "", desc = "tag1" },
        }
    },

    -- themes
    { "catppuccin/nvim", name = "catppuccin" },
    "phanviet/vim-monokai-pro",
    "rebelot/kanagawa.nvim",
    "projekt0n/github-nvim-theme",
    "aonemd/quietlight.vim",
    "https://github.com/loctvl842/monokai-pro.nvim",


--================== PLUGINS END HERE =====================
})
