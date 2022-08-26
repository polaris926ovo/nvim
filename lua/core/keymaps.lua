--------------------------------------------------
-- basic mappings
--------------------------------------------------

-- 设置 <SPACE> 为 <LEADER>
vim.g.mapleader = " "

-- 设置 <CTRL>+q 为退出
vim.keymap.set("n", "<C-q>", ":q<CR>", {noremap = true, silent = true})

-- 设置 <CTRL>+s 为保存
vim.keymap.set({"n", "i"}, "<C-s>", "<ESC>:w<CR>", {noremap = true, silent = true})

-- 快速打开配置文件
vim.keymap.set("n", "<LEADER>rc", ":vs $MYVIMRC<CR>", {noremap = true, silent = true})

-- 关闭搜索高亮
vim.keymap.set("n", "<LEADER><CR>", ":nohlsearch<CR>", {noremap = true, silent = true})



--------------------------------------------------
-- cursor movement
--------------------------------------------------

--                      ^
--                      k
--                  < h   l >
--                      j
--                      v

-- K/J 快速翻页
vim.keymap.set("n", "K", "10k", {noremap = true, silent = true})
vim.keymap.set("n", "J", "10j", {noremap = true, silent = true})

-- H/L 移动光标到行首/行尾
vim.keymap.set("n", "H", "0", {noremap = true, silent = true})
vim.keymap.set("n", "L", "$", {noremap = true, silent = true})







