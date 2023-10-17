-- See current buffers at the top of the editor
return {
	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = "nvim-tree/nvim-web-devicons",
		opts = {},
		cond = function()
			return not vim.g.vscode
		end,
	},
}
