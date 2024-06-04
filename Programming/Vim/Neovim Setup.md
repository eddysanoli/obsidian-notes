1. Install neovim with chocolatey: `choco install neovim`
2. Create the an `init.lua` file in `~/.config/nvim/init.lua`. 
	- For some reason, windows changes this universal location for this: `%USERPROFILE%\AppData\Local\nvim` where `%USERPROFILE%` is basically the equivalent of `~`
	- Why in here? Neovim has a `runtimepath` variable configured that tells neovim where to look for its configuration. By default its `~/.config/nvim`. Then, when Lua finds an `init.lua` file, it will load it by default
	- NOTE: Keep in mind that `~` doesn't work properly in windows, so you will need to provide a normal relative or absolute path
3. You can add vim commands to the `init.lua` file by calling the `vim.cmd()` meta-accessor (a function that exposes the VIM API to the Lua runtime)
4. Install a package manager. Can be either `packer` or `lazy`. Its recommended now to use `lazy`. Install it following the instructions in the [git repo](https://github.com/folke/lazy.nvim) . You should be able to open the window for it with `:Lazy`. You can close it with `q`
5. Once the setup is ready you can run the command `:source %` to apply your new configuration. Do this whenever you change the config in future steps
6. Install [telescope](https://github.com/nvim-telescope/telescope.nvim) for finding files.
7. Install [tree sitter](https://github.com/nvim-treesitter/nvim-treesitter/wiki/Installation) for highlighting and indenting
	- You will need to install a C compiler for tree sitter to work as intended. Install it with `choco install mingw`
8. Install [neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim) for a file tree explorer
9. Install [lualine](https://github.com/nvim-lualine/lualine.nvim) for a status bar at the bottom of your screen
10. Setup LSPs for you editor to get code completion, documentation, among others
	- Install [mason](https://github.com/williamboman/mason.nvim)
	- Install [mason-lspconfig]() to bridge the gap between neovim and mason
	- Install [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig/tree/master/lua) to allow the neovim to communicate with the LSP
11. Install [telescope-ui-select](https://github.com/nvim-telescope/telescope-ui-select.nvim) to show code actions in a cooler way
12. Install a fork of `null-ls` called [none-ls](https://github.com/nvimtools/none-ls.nvim) that allows you to wrap a bunch of formatting and linting utilities from different languages into a single type of utility that the LSP client that Neovim can understand
13. Install [alpha-vim](https://github.com/goolord/alpha-nvim) for a better starting dashboard
14. Configure code completion and snippets
	- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) to install the completion engine for neovim
	- [luasnip](https://github.com/L3MON4D3/LuaSnip) for the source of snippets for neovim
	- [cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip) supplying `nvim-cmp` with a list of snippets that then `luasnip` will expand upon
	- [friendly snippets](https://github.com/rafamadriz/friendly-snippets) collection of VSCode-like snippets that can be loaded by `luasnip`
	- [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp) completion source for `nvim-cmp` that displays the LSP completions based on the current language found in the buffer
15. Configure a debugger
	- [nvim-dap]() client implementation of the debug adapter protocol for Neovim
	- [nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui) UI for visually checking all of the info that `nvim-dap` provides
16. Install some dependencies for additional functionality 
	- `choco install ripgrep`
	- `choco install fd`
17. Some languages require you to install an `nvim` package for them to work
	- Node: `npm install -g nvim`
	- Python: `pip install nvim`