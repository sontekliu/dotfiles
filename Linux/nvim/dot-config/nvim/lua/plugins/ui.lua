-- neovim 的美化配置
return {
    {
        -- 在上面显示打开的文件列表
        "akinsho/bufferline.nvim",
        event = "VeryLazy",
        config = function()
            require("bufferline").setup()
        end
    },
    --     {
    --         -- 显示竖线，方便对齐
    --         "lukas-reineke/indent-blankline.nvim",
    --         main = "ibl",
    --         opts = {},
    --         event = "VeryLazy",
    --         config = function()
    --             require("ibl").setup()
    --         end
    --     },
    {
        -- 显示 git 变化信息
        "lewis6991/gitsigns.nvim",
        event = "VeryLazy",
        config = function()
            require('gitsigns').setup ({
                signs = {
                    add = { text = '+' },
                    change = { text = '~' },
                    delete = { text = '_' },
                    topdelete = { text = '‾' },
                    changedelete = { text = '~' },
                    untracked    = { text = '┆' },
                },
            })
        end
    },
    {
        -- nvim 酷酷首页显示的内容
        "goolord/alpha-nvim",
        config = function()
            require 'alpha'.setup(require 'alpha.themes.dashboard'.config)
        end
    },
    {
        -- 光标在某个单词时，显示相同的单词
        "RRethy/vim-illuminate",
        event = "VeryLazy",
        config = function()
            require('illuminate').configure()
        end
    },
}
