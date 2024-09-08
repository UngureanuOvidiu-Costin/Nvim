return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		local lspconfig = require("lspconfig")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
                null_ls.builtins.diagnostics.snyk
			},
			autostart = true,
			root_dir = lspconfig.util.root_pattern(".stylua.toml", ".git", vim.fn.getcwd()),
		})

		-- Update the keymap to use async formatting
		vim.keymap.set("n", "<C-g>", function()
			print("Keybinding triggered!")
			vim.lsp.buf.format({ async = true })
		end, {})
	end,
}
