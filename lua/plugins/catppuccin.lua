return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			flavor = "mocha",
		})
		vim.cmd.colorscheme("catppuccin")
		-- Delay applying highlights slightly to ensure they take effect
		vim.defer_fn(function()
			vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#808080", bold = true })
			vim.api.nvim_set_hl(0, "LineNr", { fg = "#ffffff", bg = "#616360" }) -- Highlight other line numbers
			vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#808080", bold = true })
		end, 50) -- Delay by 50ms
	end,
}
