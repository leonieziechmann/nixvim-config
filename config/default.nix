 {
	# Import all your configuration modules here
	imports = [
		./autocmd.nix
		./catppuccin.nix
		./clipboard.nix
		./cmp
		./comment.nix
		./git
		./leetcode.nix
		./lsp
		./lualine.nix
		./movement.nix
		./options.nix
		./refactoring.nix
		./remap.nix
		./telescope.nix
		./textYankPost.nix
		./treesitter.nix
		./typst.nix
		./undotree.nix
		./whitespace.nix
	];

	globals.mapleader = " ";
	plugins.web-devicons.enable = true;
}
