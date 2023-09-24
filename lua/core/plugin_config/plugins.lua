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
  -- Navbuddy
  -- Popup display that provides breadcrumbs like navigation feature
  -- but in keyboard centric manner inspired by ranger file manager.
  {
    'SmiteshP/nvim-navbuddy',
    dependencies = {
      'neovim/nvim-lspconfig',
      'SmiteshP/nvim-navic',
      'MunifTanjim/nui.nvim'
    }
  },
-- Install your plugins here:
  'unblevable/quick-scope', -- Easy movement with 's' find 2 coincidenses
  'nvim-lua/popup.nvim', -- An implementation of the Popup API from vim in Neovim
  'nvim-lua/plenary.nvim', -- Useful lua functions used ny lots of plugins
  'windwp/nvim-autopairs', -- Autopairs, integrates with both cmp and treesitter
  'numToStr/Comment.nvim', -- Easily comment stuff
  {
    'folke/todo-comments.nvim',
    dependencies = 'nvim-lua/plenary.nvim',
  },
  'kyazdani42/nvim-web-devicons', -- Cool loking icons
  'akinsho/toggleterm.nvim', -- Terminal floating window
  'moll/vim-bbye', -- Easy close buffe. <leader> + d
  'justinmk/vim-sneak', -- Easy movement with f, F.
  'tpope/vim-surround', -- Surround words with '' () {}
  'nvim-lualine/lualine.nvim', -- Status bar
  'mattn/emmet-vim', -- Emmet [HTML & CSS autocomplete]
  'styled-components/vim-styled-components', -- React Styled Components
  'ThePrimeagen/harpoon', -- The ThePrimeagen Mark Plug
  'ahmedkhalf/project.nvim',
  'nvim-zh/colorful-winsep.nvim', -- To put color in the border of the windows
  { 'akinsho/git-conflict.nvim', config = function()
    require('git-conflict').setup()
  end
  },
  'goolord/alpha-nvim', -- Main dashboard
  'RRethy/vim-illuminate', -- highlight words when are under the cursor
  {
    'AckslD/nvim-neoclip.lua',
    dependencies = {
      { 'nvim-telescope/telescope.nvim' },
    },
    config = function()
      require('neoclip').setup()
    end,
  },
  ({
    'folke/noice.nvim',
    event = 'VimEnter',
    config = function()
      require('noice').setup()
    end,
    dependencies = {
      'MunifTanjim/nui.nvim',
    }
  }),
  'pantharshit00/vim-prisma', -- Prisma ORM
  'sbdchd/neoformat', -- Plugin for formatting code 
  -- Docs for Noevim keys
  --[[ { ]]
  --[[   'folke/which-key.nvim', ]]
  --[[   config = function() ]]
  --[[     vim.o.timeout = true ]]
  --[[     require('which-key').setup { ]]
  --[[       -- your configuration comes here ]]
  --[[       -- or leave it empty to the default settings ]]
  --[[       -- refer to the configuration section below ]]
  --[[     } ]]
  --[[   end ]]
  --[[ } ]]

  -- Colorschemes
  -- 'lunarvim/colorschemes' -- A bunch of colorschemes
  -- 'lunarvim/darkplus.nvim'
  'navarasu/onedark.nvim',
  'folke/tokyonight.nvim',
  { 'lalitmee/cobalt2.nvim', dependencies = 'tjdevries/colorbuddy.nvim' },
  { 'ellisonleao/gruvbox.nvim' },
  {
    'svrana/neosolarized.nvim',
    dependencies = { 'tjdevries/colorbuddy.nvim' }
  },

  -- cmp plugins
  'hrsh7th/nvim-cmp', -- The completion plugin
  'hrsh7th/cmp-buffer', -- buffer completions
  'hrsh7th/cmp-path', -- path completions
  'hrsh7th/cmp-cmdline', -- cmdline completions
  'saadparwaiz1/cmp_luasnip', -- snippet completions
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-nvim-lua',
  'hrsh7th/cmp-emoji',

  -- snippets
  'L3MON4D3/LuaSnip', --snippet engine
  -- 'rafamadriz/friendly-snippets' -- a bunch of snippets to use

  -- LSP
  'neovim/nvim-lspconfig', -- enable LSP
  'williamboman/mason-lspconfig.nvim',
  { 'williamboman/mason.nvim' },
  --[[ 'williamboman/nvim-lsp-installer' -- simple to language server installer ]]
  'simrat39/symbols-outline.nvim',
  'ray-x/lsp_signature.nvim',

  -- Telescope
  'nvim-telescope/telescope.nvim',
  'tom-anders/telescope-vim-bookmarks.nvim',
  'nvim-telescope/telescope-media-files.nvim',
  'nvim-telescope/telescope-ui-select.nvim',
  'nvim-telescope/telescope-file-browser.nvim',

  -- Treesitter
  'nvim-treesitter/nvim-treesitter',
  'JoosepAlviste/nvim-ts-context-commentstring',
  'p00f/nvim-ts-rainbow',
  'windwp/nvim-ts-autotag',
}

local opts = {}

require("lazy").setup(plugins, opts)
