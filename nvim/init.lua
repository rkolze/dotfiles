vim.cmd("source ~/.vimrc")

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Custom Highlights
require("config.highlights")

vim.cmd(":Copilot disable")
