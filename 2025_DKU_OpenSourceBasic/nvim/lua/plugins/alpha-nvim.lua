return {
    'goolord/alpha-nvim',
    dependencies = {
        'nvim-tree/nvim-web-devicons',
        'nvim-lua/plenary.nvim',
    },
    config = function ()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")

        -- set header
        dashboard.section.header.val = {
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            " ██████╗   █████╗  ███████╗ ██╗  ██╗ ██████╗   ██████╗   █████╗  ██████╗  ██████╗  ",
            " ██╔══██╗ ██╔══██╗ ██╔════╝ ██║  ██║ ██╔══██╗ ██╔═══██╗ ██╔══██╗ ██╔══██╗ ██╔══██╗ ",
            " ██║  ██║ ███████║ ███████╗ ███████║ ██████╔╝ ██║   ██║ ███████║ ██████╔╝ ██║  ██║ ",
            " ██║  ██║ ██╔══██║ ╚════██║ ██╔══██║ ██╔══██╗ ██║   ██║ ██╔══██║ ██╔══██╗ ██║  ██║ ",
            " ██████╔╝ ██║  ██║ ███████║ ██║  ██║ ██████╔╝ ╚██████╔╝ ██║  ██║ ██║  ██║ ██████╔╝ ",
            " ╚═════╝  ╚═╝  ╚═╝ ╚══════╝ ╚═╝  ╚═╝ ╚═════╝   ╚═════╝  ╚═╝  ╚═╝ ╚═╝  ╚═╝ ╚═════╝  ",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
        }

        -- set buttons
        dashboard.section.buttons.val = {
            dashboard.button("o", "  Open Filesystem", ":Neotree position=float<CR>"),
            dashboard.button("f", "  Find File", ":Telescope find_files hidden=true<CR>"),
            dashboard.button("r", "  Recent File", ":Telescope oldfiles<CR>"),
            dashboard.button("q", "󰅙  Quit Neovim", ":qa<CR>"),
        }

        -- set footer
        dashboard.section.footer.val = {
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            os.date("                                       %H : %M : %S"),
        }

        -- send config to alpha
        alpha.setup(dashboard.opts)
    end
}
