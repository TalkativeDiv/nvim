return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	event = { "VeryLazy" },
	-- lazy = true,
	opts = {
		ensure_installed = {
			"lua",
			"javascript",
			"typescript",
			"markdown",
			"go",
			"gotmpl",
			"gomod",
			"gosum",
			"rust",
			"astro",
			"css",
			"java",
		},
		sync_install = false,
		auto_install = true,
		highlight = { enable = true },
		indent = { enable = true },
		compilers = {},
	},
	config = function(plugin, opts)
		require("nvim-treesitter.configs").setup(opts)
	end,
}
