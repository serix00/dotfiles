-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
    {
        "williamboman/mason.nvim",
        build = ":MasonUpdate" -- :MasonUpdate updates registry contents
    },
    -- { 'catppuccin/nvim', name = 'catppuccin' },
    -- 'sainnhe/gruvbox-material',
    -- {
    --     "folke/tokyonight.nvim",
    --     lazy = false,
    --     priority = 1000,
    --     opts = {},
    -- },
    -- { 'dasupradyumna/midnight.nvim', lazy = false, priority = 1000 },
    -- 'aktersnurra/no-clown-fiesta.nvim',
    'xiyaowong/transparent.nvim',
    'blazkowolf/gruber-darker.nvim',
    -- 'Shatur/neovim-ayu',
    --ThePrimeagen's harpoon for fast switching between files
    'ThePrimeagen/harpoon',
    'mbbill/undotree',
    'ThePrimeagen/vim-be-good',
    'christoomey/vim-tmux-navigator',
    'nvim-tree/nvim-web-devicons',
    {
        'folke/trouble.nvim',
        requires = 'nvim-tree/nvim-web-devicons',
        config = function()
            require('trouble').setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end,
    },
    'tpope/vim-commentary',
    -- {
    --   'prichrd/netrw.nvim',
    --   ft = 'netrw',
    --   init = function()
    --     require('netrw').setup {
    --       mappings = {
    --         ['p'] = function(payload)
    --           require('manatee').set_vwd(payload.dir, true)
    --         end,
    --       },
    --     }
    --   end,
    --   dependencies = {
    --     'nvim-tree/nvim-web-devicons',
    --     'tpope/vim-vinegar',
    --     'prichrd/manatee.nvim',
    --   },
    -- },
    -- {
    --     'JellyApple102/flote.nvim',
    --     config = function()
    --         require('flote').setup {
    --             q_to_quit = true,
    --             window_style = 'minimal',
    --             window_border = 'solid',
    --             window_title = false
    --         }
    --     end
    -- },
    {
        "NvChad/nvterm",
        config = function()
            require("nvterm").setup()
        end,
    },
    {
        'sychen52/smart-term-esc.nvim',
        config = function()
            require('smart-term-esc').setup {
                key = '<Esc>',
                except = { 'nvim', 'fzf' }
            }
        end
    },
    {
        "jake-stewart/jfind.nvim",
        branch = "1.0"
    },
    -- {
    --     "nvim-tree/nvim-tree.lua",
    --     version = "*",
    --     dependencies = {
    --         "nvim-tree/nvim-web-devicons",
    --     },
    --     config = function()
    --         require("nvim-tree").setup {}
    --     end,
    -- }

    -- 'folke/noice.nvim',
    -- 'rcarriga/nvim-notify',
    -- { 'akinsho/bufferline.nvim', version = "v3.*",   dependencies = 'nvim-tree/nvim-web-devicons' }
    -- { 'akinsho/bufferline.nvim', version = "v3.*",   dependencies = 'nvim-tree/nvim-web-devicons' }
}
