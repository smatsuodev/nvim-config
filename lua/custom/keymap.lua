local keymap = vim.keymap
-- キーバインド
-- 画面分割
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')
-- アクティブウィンドウの移動
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

-- jkでEscする
keymap.set('i', 'jk', '<Esc>')

-- 設定ファイルを開く
keymap.set('n', '<F1>', ':edit $MYVIMRC<CR>')

-- :と;を入れ替える
keymap.set('n', ';', ':')
keymap.set('n', ':', ';')
keymap.set('v', ';', ':')
keymap.set('v', ':', ';')

-- <ESC>でターミナルモードを抜ける
keymap.set('t', '<ESC>', '<C-\\><C-n>')

-- Finder系
local telescope_builtin = require 'telescope.builtin'
vim.keymap.set('n', '<C-f><C-o>', telescope_builtin.find_files, { desc = '[F]ind [F]iles' })
vim.keymap.set('n', '<C-f><C-f>', telescope_builtin.live_grep, { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<C-f><C-b>', telescope_builtin.buffers, { desc = '[ ] Find existing buffers' })
