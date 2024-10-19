return {
	"williamboman/mason-lspconfig.nvim",
	ensure_installed = {'lua_ls', 'rust_analyzer'},
	config = function()
		require('lspconfig')['lua_ls'].setup({})
		require('lspconfig')['rust_analyzer'].setup({})
	end,
}
