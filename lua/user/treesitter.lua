local status_ok, treesitter = pcall(require, "treesitter.configs")
if not status_ok then
	return
end

treesitter.setup({
	ensure_installed = { "javascript", "typescript", "tsx", "css", "html", "yaml", "graphql" }, -- one of "all" or a list of languages
	highlight = {
		enable = true, -- false will disable the whole extension
	},
	indent = { enable = true, disable = { "yaml" } },
	context_commentstring = {
		enable = true,
		enable_autocmd = false,
	},
})
