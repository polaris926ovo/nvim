--------------------------------------------------
-- basic
--------------------------------------------------

-- 设置文件编码格式为utf-8
vim.g.encoding = "utf-8"
-- 设置终端编码格式为utf-8
vim.o.termencoding = "utf-8"

-- 开启语法高亮
vim.o.syntax = "enable"

-- 显示行号
vim.o.number = true
-- 显示相对行号
vim.o.relativenumber = false

-- 内容过长换行显示
vim.o.wrap = true

-- 显示空白字符
vim.o.list = true
vim.o.listchars = [[tab:| ,trail:□]]

-- 历史命令最多保留1000行
vim.o.history = 1000

-- 样式
vim.o.background = "dark"
vim.o.termguicolors = true


--------------------------------------------------
-- cursor
--------------------------------------------------

-- 显示光标位置
vim.o.ruler = true
-- 高亮光标所在行
vim.o.cursorline = true

-- 光标移动时，上下方保留n行
vim.o.scrolloff = 5


--------------------------------------------------
-- search
--------------------------------------------------

-- 边输入边搜索
vim.o.incsearch = true
-- 开启搜索匹配高亮
vim.o.hlsearch = true

-- 搜索时大小写不敏感
vim.o.ignorecase = true
-- 搜索时大小写只能敏感
vim.o.smartcase = true


--------------------------------------------------
-- tab
--------------------------------------------------

-- tab占四个空格
vim.o.tabstop = 4
vim.o.softtabstop = 4
-- << >>缩进时移动的距离
vim.o.shiftwidth = 4

-- 新行对其当前行
vim.o.autoindent = true
vim.o.smartindent = true
-- tab转换为空格
vim.o.expandtab = false
