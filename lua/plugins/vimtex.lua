return {
	{
		"lervag/vimtex",
		lazy = false, -- we don't want to lazy load VimTeX
		-- tag = "v2.15", -- uncomment to pin to a specific release
		init = function()

			vim.g.maplocalleader = ","
			vim.g.vimtex_view_method = "zathura"
			vim.g.vimtex_view_general_viewer = "okular"
			vim.g.vimtex_view_general_options = "--unique file:@pdf#src:@line@tex"
			vim.g.vimtex_compiler_method = "latexmk"
			vim.g.vimtex_fold_manual = true

			-- Enable syntax highlighting
			vim.cmd("filetype plugin indent on")

			-- Enable filetype detection, plugin, and indent settings
			vim.cmd("syntax enable") -- VimTeX configuration goes here, e.g.

		end,
	},
}
