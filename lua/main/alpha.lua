local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = {}

dashboard.section.buttons.val = {
	dashboard.button("f", "Files", ":Telescope find_files <cr>"),
	dashboard.button("e", "Create", ":ene <BAR> startinsert <cr>"),
	-- dashboard.button("p", "Find project", ":Telescope projects <cr>"),
	-- dashboard.button("r", "Recently used files", ":Telescope oldfiles <cr>"),
	dashboard.button("t", "Grep", ":Telescope live_grep <cr>"),
	dashboard.button("v", "Nvim", ":cd  ~/.config/nvim/<cr> :e ~/.config/nvim/init.lua <cr>"),
	-- dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
}

dashboard.section.footer.val = {}

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
-- vim.cmd([[autocmd User AlphaReady echo 'ready']])
alpha.setup(dashboard.opts)
