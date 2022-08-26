local status, nvim_tree = pcall(require, "nvim-tree")
if not status then
	return
end

local config = {
	-- 完全禁止内置netrw
	disable_netrw = true,

	-- 文件夹关闭时可以创建文件
	create_in_closed_folder = false,

	git = {
		enable = true,
		ignore = true,
		show_on_dirs = false,
	},

	view = {
		-- 隐藏根目录
		hide_root_folder = false,

		-- 显示行数
		number = false,
		relativenumber = false,

		-- 是否有单独标记列
		signcolumn = "yes",

		mappings = {
			custom_only = false,
			list = {
			-- user mappings go here
			},
		},

		-- 浮窗显示
		float = {
			enable = true,
			open_win_config = {
				relative = "editor",
				border = "rounded",
				width = 35,
				height = 99,
				anchor = "NE",
				row = 0,
				col = 999,
			},
		},
	},

	renderer = {
		-- 文件夹名字尾部添加'/'
		add_trailing = true,
		highlight_git = false,
		highlight_opened_files = "all",
		indent_markers = {
			enable = true,
			inline_arrows = false,
		},
		icons = {
			webdev_colors = true,
			git_placement = "signcolumn",
		},
		special_files = {"Makefile", "README.md", "readme.md"},
		symlink_destination = true,
	},
}

nvim_tree.setup(config)
