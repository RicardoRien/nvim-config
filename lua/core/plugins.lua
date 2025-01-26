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
-- Install your plugins here:
  {
    'unblevable/quick-scope' , -- Easy movement with f, F.
    init = function()
      vim.cmd([[
        " Trigger a highlight in the appropriate direction when pressing these keys:
        let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

        highlight QuickScopePrimary guifg='#00C7DF' gui=underline ctermfg=155 cterm=underline
        highlight QuickScopeSecondary guifg='#afff5f' gui=underline ctermfg=81 cterm=underline

        let g:qs_max_chars=150
      ]])
    end
  },
  {
    'justinmk/vim-sneak', -- Easy movement with 's' find 2 coincidenses
      init = function()
        vim.cmd([[
          let g:sneak#label = 1
          " case insensitive sneak
          let g:sneak#use_ic_scs = 1
          " immediately move to the next instance of search, if you move the cursor sneak is back to default behavior
          let g:sneak#s_next = 1
          " remap so I can use , and ; with f and t
          map gS <Plug>Sneak_,
          map gs <Plug>Sneak_;
          " Change the colors
          highlight Sneak guifg=black guibg=#00C7DF ctermfg=black ctermbg=cyan
          highlight SneakScope guifg=red guibg=yellow ctermfg=red ctermbg=yellow
        ]])
      end
  },
  { -- Emmet [HTML & CSS autocomplete]
    'mattn/emmet-vim',
    init = function()
      vim.cmd([[
        let g:user_emmet_mode='n' " only enable normal mode functions
        let g:user_emmet_leader_key=','
        " autocmd FileType html,css,javascript.jsx EmmetInstall
      ]])
    end,
  },
  --[[ { ]]
  --[[     "ThePrimeagen/harpoon", ]]
  --[[     branch = "harpoon2", ]]
  --[[     dependencies = { "nvim-lua/plenary.nvim" } ]]
  --[[ }, ]]
  {
    "cbochs/grapple.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-tree/nvim-web-devicons", lazy = true
    },
    config = function()
      require("telescope").load_extension("grapple")

      --[[ vim.keymap.set("n", "<c-h>", "<cmd>Telescope grapple tags<cr>") SHOW IN TELESCOPE]]
      vim.keymap.set("n", "<leader>ha", "<cmd>Grapple tag<cr>")
      vim.keymap.set("n", "<leader>hh", "<cmd>Grapple open_tags<cr>")

      vim.keymap.set("n", "<leader>hu", "<cmd>Grapple select index=1<cr>")
      vim.keymap.set("n", "<leader>hi", "<cmd>Grapple select index=2<cr>")
      vim.keymap.set("n", "<leader>ho", "<cmd>Grapple select index=3<cr>")
      vim.keymap.set("n", "<leader>hp", "<cmd>Grapple select index=4<cr>")

      -- Toggle previous & next buffers
      --[[ vim.keymap.set("n", "<C-hn>", "<cmd>Grapple cycle backward<cr>") ]]
      --[[ vim.keymap.set("n", "<C-hb>", "<cmd>Grapple cycle forward<cr>") ]]
    end
  },
  {
    'folke/todo-comments.nvim',
    dependencies = 'nvim-lua/plenary.nvim',
  },
  {'akinsho/git-conflict.nvim', version = "*", config = true},
  { 'dmmulroy/ts-error-translator.nvim' },
  {
    "ellisonleao/carbon-now.nvim",
    lazy = true,
    cmd = "CarbonNow",
    ---@param opts cn.ConfigSchema
    opts = { [[ your custom config here ]] }
  },
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
  -- Navbuddy
  -- Popup display that provides breadcrumbs like navigation feature
  -- but in keyboard centric manner inspired by ranger file manager.
  {
    "neovim/nvim-lspconfig",
    branch = "master",
    commit = "f137a3466a6cd1965cdcc5398daff54e66eebbe5",
    dependencies = {
        {
            "SmiteshP/nvim-navbuddy",
            dependencies = {
                "SmiteshP/nvim-navic",
                "MunifTanjim/nui.nvim"
            },
            opts = { lsp = { auto_attach = true } }
        }
    },
    lazy = true
  },
  {'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'},
  'nvim-lua/popup.nvim', -- An implementation of the Popup API from vim in Neovim
  'nvim-lua/plenary.nvim', -- Useful lua functions used ny lots of plugins
  'windwp/nvim-autopairs', -- Autopairs, integrates with both cmp and treesitter
  'numToStr/Comment.nvim', -- Easily comment stuff
  'nvim-tree/nvim-tree.lua' , -- Folder-tree navigation
  'nvim-tree/nvim-web-devicons', -- Cool loking icons
  'akinsho/toggleterm.nvim', -- Terminal floating window
  {
    "willothy/nvim-cokeline", tag = "v0.4.0", commit = "904dc18d017cdf5c7c52a6455fd2a8d6f9a8bc3b",
    dependencies = {
      "nvim-lua/plenary.nvim",        -- Required for v0.4.0+
      "nvim-tree/nvim-web-devicons", -- If you want devicons
    },
    config = true
  },
  'moll/vim-bbye', -- Easy close buffe. <leader> + d
  'tpope/vim-surround', -- Surround words with '' () {}
  'nvim-lualine/lualine.nvim', -- Status bar
  'styled-components/vim-styled-components', -- React Styled Components
  'ahmedkhalf/project.nvim',
  'nvim-zh/colorful-winsep.nvim', -- To put color in the border of the windows
  'goolord/alpha-nvim', -- Main dashboard
  'RRethy/vim-illuminate', -- highlight words when are under the cursor
  'pantharshit00/vim-prisma', -- Prisma ORM
  'mhartington/formatter.nvim',
  --[[ -- Tailwind ~
    {
      "luckasRanarison/tailwind-tools.nvim",
      opts = {
        document_color = {
          enabled = true, -- can be toggled by commands
          kind = "inline", -- "inline" | "foreground" | "background"
          inline_symbol = "󰝤 ", -- only used in inline mode
          debounce = 200, -- in milliseconds, only applied in insert mode
        },
        conceal = {
          symbol = "󱏿", -- only a single character is allowed
          highlight = { -- extmark highlight options, see :h 'highlight'
            fg = "#38BDF8",
          },
        },    } -- your configuration
    },
  ]]
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
  { "catppuccin/nvim", name = "catppuccin" },
  { 'lalitmee/cobalt2.nvim', dependencies = 'tjdevries/colorbuddy.nvim' },
  { 'ellisonleao/gruvbox.nvim' },
  {
    'svrana/neosolarized.nvim',
    dependencies = { 'tjdevries/colorbuddy.nvim' }
  },
  { 'kevinhwang91/nvim-ufo', dependencies = 'kevinhwang91/promise-async' },

  -- cmp plugins
  { 'hrsh7th/nvim-cmp' }, -- The completion plugin
  { 'hrsh7th/cmp-buffer' }, -- buffer completions
  { 'hrsh7th/cmp-path' }, -- path completions
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
  {
    'williamboman/mason-lspconfig.nvim',
  },
  { 'williamboman/mason.nvim' },
  'simrat39/symbols-outline.nvim',
  'ray-x/lsp_signature.nvim',

  -- Telescope
  {
    'nvim-telescope/telescope.nvim',
    lazy = true,
    cmd = "Telescope"
  },
  'tom-anders/telescope-vim-bookmarks.nvim',
  'nvim-telescope/telescope-media-files.nvim',
  'nvim-telescope/telescope-ui-select.nvim',
  'nvim-telescope/telescope-file-browser.nvim',

  -- Treesitter
  'nvim-treesitter/nvim-treesitter',
  'JoosepAlviste/nvim-ts-context-commentstring',
  'hiphish/rainbow-delimiters.nvim',
  'windwp/nvim-ts-autotag',

  -- Copilot
  --[[ 'github/copilot.vim' ]]
}

local opts = {}

require("lazy").setup(plugins, opts)
