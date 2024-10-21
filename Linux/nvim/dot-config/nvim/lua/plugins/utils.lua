return {
    {
        -- neovim 文件管理器
        "nvim-neo-tree/neo-tree.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            -- "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
        },
        keys = {
            { "<leader>e", "<cmd>Neotree toggle<CR>", desc = "打开文件目录", mode = { "n", "v" } }
        },
        config = true,
    },
    {
        -- 自动生成匹配的括号
        "windwp/nvim-autopairs",
        event = "VeryLazy",
        opts = {
            enable_check_bracket_line = false,
        },
    },
    {
        -- 查看某些按键，之后应该再按啥
        "folke/which-key.nvim",
        event = "VeryLazy",
        config = true,
    },
    {
        -- 加快 jk 的移动速度
        "rhysd/accelerated-jk",
        keys = {
            { "j", "<Plug>(accelerated_jk_gj)" },
            { "k", "<Plug>(accelerated_jk_gk)" },
        },
    },
    {
        -- 文件再次打开时候,光标在退出文件时的位置
        "ethanholz/nvim-lastplace",
        config = true,
    },
    {
        'echasnovski/mini.ai',
        event = "VeryLazy",
        config = true,
    },
    {
        -- 注释
        "echasnovski/mini.comment",
        event = "VeryLazy",
        config = true
    },
    {
        -- 包括字符串
        -- "echasnovski/mini.surround",
        "tpope/vim-surround",
        event = "VeryLazy",
        config = function()
        end
    },
    {
        "dstein64/vim-startuptime",
        cmd = "StartupTime",
        config = function()
            vim.g.startuptime_tries = 10
        end,
    },
    {
        "iamcco/markdown-preview.nvim",
        build = "cd app && yarn install",
        ft = "markdown",
        keys = { { "mp", ":MarkdownPreviewToggle<CR>", desc = "预览markdown文件"} },
        config = function()
            vim.fn["mkdp#util#install"]()
        end,
    }

}
