local options = {
	-- encoding = "utf-8",
  -- fileencoding = "utf-8",
	title = true,
	backup = false,
	clipboard = "unnamedplus",
	cmdheight = 2,
	completeopt = { "menuone", "noselect" },
	conceallevel = 0,
	hlsearch = true,
	ignorecase = true,
	mouse = "a",
	pumheight = 10,
	showmode = false,
	showtabline = 2,
	smartcase = true,
	smartindent = true,
	swapfile = false,
	termguicolors = true,
	timeoutlen = 300,
	undofile = true,
	updatetime = 300,
	writebackup = false,
	-- shell = "fish",
  shell = "zsh",
	backupskip = { "/tmp/*", "/private/tmp/*" },
	expandtab = true,
	shiftwidth = 2,
	tabstop = 2,
	cursorline = true,
	number = true,
	relativenumber = false,
	numberwidth = 4,
	signcolumn = "yes",
	wrap = false,
	winblend = 0,
	wildoptions = "pum",
	pumblend = 5,
	background = "dark",
	scrolloff = 8,
	sidescrolloff = 8,
	guifont = "monospace:h17",
	splitbelow = false,
	splitright = false,
}

-- メッセージを表示
vim.opt.shortmess:append("c")

for k, v in pairs(options) do
	vim.opt[k] = v
end

-- カーソルの移動範囲
vim.cmd("set whichwrap+=<,>,[,],h,l")
-- キーワードにハイフンを追加
vim.cmd([[set iskeyword+=-]])

--[[ local options = {
	title = true, -- windowのタイトルを表示するか
	backup = false, -- バックアップ作成有無
	clipboard = "unnamedplus", -- クリップボード設定(システムのクリップボードと連携)
	cmdheight = 2, -- コマンドのラインの高さの設定
	completeopt = { "menuone", "noselect" }, -- 補完メニューの動作を指定
	conceallevel = 0, -- テキストの隠蔽レベル
	hlsearch = true, -- 検索結果のハイライト
	ignorecase = true, -- 検索時に大文字と小文字を区別しない様に
	mouse = "a", -- マウス操作の有効化
	pumheight = 10, -- ポップアップメニューの高さ
	showmode = false, -- モード表示有無
	showtabline = 2, -- タブラインの表示の設定
	smartcase = true, -- 厳密な大文字小文字区別の有効化
	smartindent = true, -- スマートインデントの有効化
	swapfile = false, -- スワップファイルの作成有無
	termguicolors = true, -- ターミナルの色を有効化
	timeoutlen = 300, -- マッピングのタイムアウト時間
	undofile = true, -- アンドゥファイルの有効化
	updatetime = 300, -- カーソルホールドイベントの更新時間を設定
	writebackup = false, -- 書き込み時のバックアップを無効化
  shell = "zsh", -- 使用するシェル,
	backupskip = { "/tmp/*", "/private/tmp/*" }, -- バックアップをスキップするパス
	expandtab = true, -- タブをスペースに変換
	shiftwidth = 2, -- インデントの幅
	tabstop = 2, -- タブの幅
	cursorline = true, -- カーソル行のハイライト
	number = true, -- 行番号の表示
	relativenumber = false, -- 相対行番号の表示
	numberwidth = 4, -- 行番号の幅
	signcolumn = "yes", -- サインカラムの表示
	wrap = false, -- テキストの折り返し
	winblend = 0, -- ウィンドウの透明度の設定
	wildoptions = "pum", -- コマンドライン補完のオプション
	pumblend = 5, -- ポップアップメニューの透明度の設定
	background = "dark", -- 背景色
	scrolloff = 8, -- スクロールオフセット
	sidescrolloff = 8, -- スクロールオフセット
	guifont = "monospace:h17", -- GUIフォント
	splitbelow = false, -- 新しいウィンドウの分割位置
	splitright = false, -- 新しいウィンドウの分割位置
} ]]
