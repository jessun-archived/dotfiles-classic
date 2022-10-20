local vim_loop, vim_api = vim.loop, vim.api

local global = require("base/global")

local packer_dir = global.site_dir .. "/pack/packer/start/packer.nvim"
local Packer = {}

function Packer:init()
	local state = vim_loop.fs_stat(packer_dir)
	if not state then
		local cmd = "!git clone https://github.com/wbthomason/packer.nvim " .. packer_dir
		vim_api.nvim_command(cmd)
		vim_loop.fs_mkdir(global.site_dir .. "lua", 511, function()
			assert("make compile path dir failed")
		end)
	end
end

function Packer:start_up()
	vim.cmd([[packadd! packer.nvim]])
	local packer = require("packer")
	packer.startup(function()
		--||||||||||||||||||||||||||||||||||||||||| 插件管理 ||||||||||||||||||||||||||||||||||||||||||||
		use("wbthomason/packer.nvim") -------------------------------------------------------------------- 插件管理
		use("neoclide/coc.nvim") ------------------------------------------------------------------------- coc.nvim
		--
		--
		--|||||||||||||||||||||||||||||||||||||||||||| UI |||||||||||||||||||||||||||||||||||||||||||||||
		use("kyazdani42/nvim-web-devicons") -------------------------------------------------------------- 扩展图标
		use({ "folke/todo-comments.nvim", requires = "nvim-lua/plenary.nvim" }) -------------------------- 高亮关键字
		use({ "jessun/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons", opt = true } }) -- 状态栏
		use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }) ------------------------------------ 代码高亮
		use("neoclide/jsonc.vim")
		use("petertriho/nvim-scrollbar")
		use("sunjon/Shade.nvim")

		---------------------------- colorscheme {
		use("flazz/vim-colorschemes")
		use("jessun/vimspectr")
		use("mcchrish/vim-no-color-collections")
		use("mkarmona/colorsbox")
		use("mswift42/vim-themes")
		use("projekt0n/github-nvim-theme")
		use("rafi/awesome-vim-colorschemes")
		use("rainglow/vim")
		use("rmehri01/onenord.nvim")
		---------------------------- colorscheme }

		--||||||||||||||||||||||||||||||||||||||||| 文本操作 ||||||||||||||||||||||||||||||||||||||||||||
		use("machakann/vim-sandwich") ---------------------=---------------------------------------------- 快速两端文本 ?
		use("github/copilot.vim") ------------------------------------------------------------------------ Github AI 补全
		use({
			"iamcco/markdown-preview.nvim",
			run = "cd app && npm install",
			setup = function()
				vim.g.mkdp_filetypes = { "markdown" }
			end,
			ft = { "markdown" },
		})
		--
		--
		--||||||||||||||||||||||||||||||||||||||||| 辅助工具 ||||||||||||||||||||||||||||||||||||||||||||
		use("dstein64/vim-startuptime")
		--
		--
		--||||||||||||||||||||||||||||||||||||||||| 目录管理 ||||||||||||||||||||||||||||||||||||||||||||
		use({
			"kyazdani42/nvim-tree.lua",
			requires = {
				"kyazdani42/nvim-web-devicons", -- optional, for file icons
			},
			tag = "nightly", -- optional, updated every week. (see issue #1193)
		})
		--
		--||||||||||||||||||||||||||||||||||||||||||| GIT |||||||||||||||||||||||||||||||||||||||||||||||
		-- use {"sindrets/diffview.nvim", requires = "nvim-lua/plenary.nvim"} --------------------------- 差异比较
		--
		--
		--||||||||||||||||||||||||||||||||||||||||| 编码工具 ||||||||||||||||||||||||||||||||||||||||||||
		-- use "stevearc/aerial.nvim" ---------------------------------------------------------------------- 代码大纲
		use("numToStr/Comment.nvim") --------------------------------------------------------------------- 代码注释
		use("liuchengxu/vista.vim")
		--
		--
		--||||||||||||||||||||||||||||||||||||||||| 模糊搜索 ||||||||||||||||||||||||||||||||||||||||||||
		use({ "nvim-telescope/telescope.nvim", requires = { { "nvim-lua/plenary.nvim" } } }) ------------- 模糊搜索
		-- use "danielpieper/telescope-tmuxinator.nvim" ---------------------------------------------------- tmuxinator 跳转
		use("eckon/treesitter-current-functions") -------------------------------------------------------- 当前函数 ?
		use("nvim-treesitter/nvim-treesitter-textobjects") ----------------------------------------------- 文本对象 ?
		use("RRethy/nvim-treesitter-textsubjects") ------------------------------------------------------- 文本对象 ?
		use("nvim-treesitter/nvim-treesitter-context")
		--
		--||||||||||||||||||||||||||||||||||||||||| 性能优化 ||||||||||||||||||||||||||||||||||||||||||||
		use("nathom/filetype.nvim") ---------------------------------------------------------------------- filetype 性能优化

		--||||||||||||||||||||||||||||||||||||||||| TESTING ||||||||||||||||||||||||||||||||||||||||||||
		-- use("shaunsingh/nord.nvim")
		-- use("easysid/mod8.vim")
		-- use("arcticicestudio/nord-vim")
		-- use("lukas-reineke/indent-blankline.nvim")
		use({
			"lewis6991/gitsigns.nvim",
			-- tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
		})
		use({ "anuvyklack/windows.nvim", requires = { "anuvyklack/middleclass", "anuvyklack/animation.nvim" } })
		use("yaocccc/nvim-hlchunk")
		use("smjonas/live-command.nvim")
		use("tpope/vim-fugitive")
		use({ "akinsho/git-conflict.nvim", tag = "*" })
		use("justinmk/vim-sneak")
		use("karb94/neoscroll.nvim")
	end)
end

return Packer
