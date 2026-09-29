-- LSP-Konfiguration
return {
	-- Mason: installiert LSP-Server, Formatter, Linter
	{
		"mason-org/mason.nvim",
		opts = {
			ensure_installed = {
				-- python
				"pyright", -- lsp
				"ruff", -- linting and formatting
				-- angular / javascript stuff
				"angular-language-server",
				"prettier",
				-- java
				"jdtls",
			},
		},
	},

	-- LSP
	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				pyright = {},
				angularls = {},
			},
		},
	},
	-- Formatting
	{
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				markdown = { "prettier" },
				javascript = { "prettier" },
				html = { "prettier" },
				htmlangular = { "prettier" },
				python = { "ruff_format" },
			},
		},
	},
	-- Linting
	{
		"mfussenegger/nvim-lint",
		opts = {
			linters_by_ft = {
				python = { "ruff" },
			},
			linters = {
				["markdownlint-cli2"] = {
					-- Disable MD013
					args = { "--disable", "MD013" },
				},
			},
		},
	},
}
