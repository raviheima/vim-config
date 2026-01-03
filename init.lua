vim.loader.enable(false)
-- disable lua caching due to cache loading errors

vim.cmd([[
    set runtimepath^=~/.vim runtimepath+=~/.vim/after
    let &packpath = &runtimepath
    source ~/.vim/.vimrc
    ]])

require("config.lazy")

