local status_ok = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end

require'nvim-treesitter.configs'.setup {
	ensure_installed = {
        "go",
        "typescript",
        "javascript",
        "python",
        "dart",
        "markdown",
        "vim",
        "lua",
    }, -- one of "all" or a list of languages
    auto_install = true,
	ignore_install = { "" }, -- List of parsers to ignore installing
	highlight = {
		enable = true, -- false will disable the whole extension
		disable = { "" }, -- list of language that will be disabled
        additonal_vim_regex_highlighting = false,
	},
	autopairs = {
		enable = true,
	},
	indent = {
        enable = true,
        disable = { "" },
    },
}
