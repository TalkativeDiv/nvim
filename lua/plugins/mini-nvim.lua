return {
	'echasnovski/mini.nvim',
	version = '*',
	config = function()
		require("mini.icons").setup()
		require("mini.comment").setup()
	end,
}

