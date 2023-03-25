local function map(mode, lhs, rhs, opts)
    -- default options
    local options = { noremap = true, silent = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- update plugins
map("n", "<Leader>u", ":PackerSync<CR>")
