local mapKey = require("utils.keymapper").mapKey

return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.6',
    dependencies = { 'nvim-lua/plenary.nvim' },

    config = function()
        local builtin = require("telescope.builtin")

        mapKey('<S-f>f', builtin.find_files)
        mapKey('<S-f>g', builtin.live_grep)
        mapKey('<S-f>s', builtin.grep_string)
    end,
}
