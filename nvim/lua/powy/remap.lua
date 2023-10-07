-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)
vim.keymap.set('n', '<leader>w', vim.cmd.w, { desc = 'save file' })
vim.keymap.set('n', '<leader>q', vim.cmd.q, { desc = 'save file' })
-- vim.keymap.set('n', '<leader>pt', vim.cmd.NvimTreeToggle)
vim.keymap.set('n', '<leader>fm', vim.cmd.Format, { desc = 'Format the file using :Format' })
vim.keymap.set('n', '<C-;>', vim.cmd.bprevious, { desc = 'Go back to previous buffer' })
vim.keymap.set('n', "<C-'>", vim.cmd.bnext, { desc = 'Go back to previous buffer' })
vim.keymap.set('v', 'z', ":m '>+1<CR>gv=gv", { desc = 'kinda like alt arrow up and down in vscode' })
vim.keymap.set('v', 'x', ":m '<-2<CR>gv=gv")

vim.keymap.set('n', 'J', 'mzJ`z',
  { desc = 'appends the current line above while the cursor is till in the beginning of the line?' })
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')
vim.keymap.set('n', '<leader>cn', ':let @/ = ""')
-- vim.keymap.set('n', '<C-f>', '<cmd>silent !tmux neww tmux-sessionizer<CR>')
vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]])
vim.keymap.set('n', '<leader>Y', [["+Y]])

vim.keymap.set({ 'n', 'v' }, '<leader>d', [["_d]])
vim.keymap.set('n', '<leader>o', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set('i', '<C-q>', '<Esc>')
-- vim.notify = require('notify')
-- Flote remap
-- vim.keymap.set('n', '<leader>n', vim.cmd.Flote, { desc = 'Open Flote TODO list.' })

-- toggle floating term
vim.keymap.set({ 'n', 't' }, '<A-t>',
  function()
    require("nvterm.terminal").toggle "float"
  end
)

vim.keymap.set({ 'n', 't' }, '<A-s>',
  function()
    require("nvterm.terminal").toggle "horizontal"
  end
)

vim.keymap.set({ 'n', 't' }, '<A-v>',
  function()
    require("nvterm.terminal").toggle "vertical"
  end
)

-- vim.keymap.set({ 'n', 't' }, '<A-z>',
--   function()
--     require("nvterm.terminal").toggle "horizontal"
--   end
-- )

local jfind = require("jfind")
local key = require("jfind.key")

jfind.setup({
  exclude = {
    ".git",
    ".idea",
    ".vscode",
    ".sass-cache",
    ".class",
    "__pycache__",
    "node_modules",
    "target",
    "build",
    "tmp",
    "assets",
    "dist",
    "public",
    "*.iml",
    "*.meta"
  },
  border = "rounded",
  tmux = true,
});

-- fuzzy file search can be started simply with
-- vim.keymap.set("n", "<c-f>", jfind.findFile)

-- or you can provide more customization
-- for more information, read the "Lua Jfind Interface" section
vim.keymap.set("n", "<c-f>", function()
  jfind.findFile({
    formatPaths = true,
    callback = {
      [key.DEFAULT] = vim.cmd.edit,
      [key.CTRL_S] = vim.cmd.split,
      [key.CTRL_V] = vim.cmd.vsplit,
    }
  })
end)
