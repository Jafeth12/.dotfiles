local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
--================== PLUGINS BEGIN HERE =====================
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    use {
      'lewis6991/gitsigns.nvim', -- git diffs in sign column.
      -- tag = 'release', -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
    }

    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.0',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use {
        "akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
        end
    }

    use {
        "williamboman/mason.nvim", -- LSP servers packet manager
        "williamboman/mason-lspconfig.nvim", -- unites lspconfig and mason
        "neovim/nvim-lspconfig", -- sets up config to enable comms between nvim and my lsp's
    }

    -- bufferline to bonito
    use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}

    use 'rafi/awesome-vim-colorschemes'
    use 'nvim-tree/nvim-tree.lua'
    use 'nvim-tree/nvim-web-devicons'
    use 'nvim-lualine/lualine.nvim'
    use 'nvim-treesitter/nvim-treesitter' -- syntax highlighting
    use 'lewis6991/impatient.nvim' -- increase load time
    use 'christoomey/vim-tmux-navigator'

    -- code completion
    use "hrsh7th/nvim-cmp"
    use "hrsh7th/cmp-nvim-lsp"
    use "L3MON4D3/LuaSnip"
    use "saadparwaiz1/cmp_luasnip"
    use "rafamadriz/friendly-snippets"

--================== PLUGINS END HERE =====================
--
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
