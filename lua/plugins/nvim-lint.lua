return {
  "mfussenegger/nvim-lint",
  event = {
    "BufReadPre",
    "BufNewFile",
  },
  keys = {
    {
      "<leader>l",
      function()
        require("lint").try_lint(nil, { ignore_errors = true })
      end,
    },
  },
  config = function()
    local lint = require("lint")
    local web_linters = { "eslint" }
    lint.linters_by_ft = {
      astro = web_linters,
      javascript = web_linters,
      typescript = web_linters,
      javascriptreact = web_linters,
      typescriptreact = web_linters,
      svelte = web_linters,
      python = { "pylint" },
      ruby = { "rubocop" }
      -- lua = { "selene" },
    }
    -- local eslint = lint.linters.eslint_d
    --
    -- eslint.args = {
    -- 	"--no-warn-ignored", -- <-- this is the key argument
    -- 	"json",
    -- 	"-stdin",
    -- 	"--stdin-filename",
    -- 	function()
    -- 		return vim.api.nvim_buf_get_name(0)
    -- 	end,
    -- }
    local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

    vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
      group = lint_augroup,
      callback = function()
        lint.try_lint(nil, { ignore_errors = true })
      end,
    })
  end,
}
