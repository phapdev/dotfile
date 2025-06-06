return {
	ensure_installed = {
		-- "go",
		"lua",
		"rust",
    "html",
    "css",
    "typescript",
	},
	highlight = {
		enable = true,
		use_languagetree = true,
	},
	indent = { enable = true },
	autotag = {
		enable = true,
		enable_rename = true,
		enable_close = true,
		enable_close_on_slash = true,
		filetypes = { "html", "xml", "markdown", "typescript", "javascript", "jsx", "tsx" },
	},
}

