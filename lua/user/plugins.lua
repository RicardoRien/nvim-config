local fn = vim.fn

-- Plugin location
-- /home/ricardo/.local/share/nvim/site/pack/packer/start

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
  autocmd!
  autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)
  -- My plugins here
  use "wbthomason/packer.nvim" -- Have packer manage itself
  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins
  use "windwp/nvim-autopairs" -- Autopairs, integrates with both cmp and treesitter
  use "numToStr/Comment.nvim" -- Easily comment stuff
  use {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
  }
  use 'kyazdani42/nvim-web-devicons' -- Cool loking icons
  use 'kyazdani42/nvim-tree.lua' -- Folder-tree navigation
  use "akinsho/toggleterm.nvim" -- Terminal floating window
  --[[ use "akinsho/bufferline.nvim" -- Beauty tabs-buffer ]]
  use "noib3/nvim-cokeline" -- Beauty tabs-buffer
  use "moll/vim-bbye" -- Easy close buffe. Ctrl + d
  use "justinmk/vim-sneak" -- Easy movement with f, F.
  use "unblevable/quick-scope" -- Easy movement with "s" find 2 coincidenses
  use "tpope/vim-surround" -- Surround words with "" () {}
  use 'nvim-lualine/lualine.nvim' -- Status bar
  use 'mattn/emmet-vim' -- Emmet [HTML & CSS autocomplete]
  use 'styled-components/vim-styled-components' -- React Styled Components
  -- use 'terryma/vim-multiple-cursors' -- Multicursor ~ ctrl+n
  use 'ThePrimeagen/harpoon' -- The ThePrimeagen Mark Plug
  use "ahmedkhalf/project.nvim"
  --[[ use "ggandor/leap.nvim" -- like sneak to find thing quickly ]]
  use 'nvim-zh/colorful-winsep.nvim' -- To put color in the border of the windows
  use { "ellisonleao/gruvbox.nvim" }
  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  }
  use { 'akinsho/git-conflict.nvim', config = function()
    require('git-conflict').setup()
  end }
  use "goolord/alpha-nvim" -- Main dashboard
  use "RRethy/vim-illuminate" -- highlight words when are under the cursor
  use {
    "AckslD/nvim-neoclip.lua",
    requires = {
      { 'nvim-telescope/telescope.nvim' },
    },
    config = function()
      require('neoclip').setup()
    end,
  }
  use({
    "folke/noice.nvim",
    event = "VimEnter",
    config = function()
      require("noice").setup()
    end,
    requires = {
      --[[ if you lazy-load any plugin below, make sure to add proper `module="..."` entries ]]
      "MunifTanjim/nui.nvim",
      --[[ OPTIONAL: ]]
      --[[   `nvim-notify` is only needed, if you want to use the notification view. ]]
      --[[   If not available, we use `mini` as the fallback ]]
      --[[ "rcarriga/nvim-notify", ]]
    }
  })
  use "pantharshit00/vim-prisma" -- Prisma ORM

  -- Colorschemes
  -- use "lunarvim/colorschemes" -- A bunch of colorschemes
  -- use "lunarvim/darkplus.nvim"
  use 'navarasu/onedark.nvim'
  use 'folke/tokyonight.nvim'
  -- use { 'lalitmee/cobalt2.nvim', requires = 'tjdevries/colorbuddy.nvim' }

  -- cmp plugins
  use "hrsh7th/nvim-cmp" -- The completion plugin
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-cmdline" -- cmdline completions
  use "saadparwaiz1/cmp_luasnip" -- snippet completions
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-nvim-lua"
  use "hrsh7th/cmp-emoji"

  -- snippets
  use "L3MON4D3/LuaSnip" --snippet engine
  -- use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

  -- LSP
  use "neovim/nvim-lspconfig" -- enable LSP
  use "williamboman/mason-lspconfig.nvim"
  use { "williamboman/mason.nvim" }
  --[[ use "williamboman/nvim-lsp-installer" -- simple to use language server installer ]]
  use "simrat39/symbols-outline.nvim"
  use "ray-x/lsp_signature.nvim"

  -- Telescope
  use "nvim-telescope/telescope.nvim"
  use "tom-anders/telescope-vim-bookmarks.nvim"
  use "nvim-telescope/telescope-media-files.nvim"
  use "nvim-telescope/telescope-ui-select.nvim"
  use "nvim-telescope/telescope-file-browser.nvim"

  -- Treesitter
  use "nvim-treesitter/nvim-treesitter"
  use "JoosepAlviste/nvim-ts-context-commentstring"
  use "p00f/nvim-ts-rainbow"
  use "windwp/nvim-ts-autotag"


  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  -- if PACKER_BOOTSTRAP then
  --   require("packer").sync()
  -- end
end)
