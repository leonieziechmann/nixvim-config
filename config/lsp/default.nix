{pkgs, ...}:
{
	imports = [
		./servers.nix
	];

	plugins.lsp = {
		enable = true;
		
		keymaps = {
			silent = true;
			lspBuf = {
				gd.action = "definition";
				gr.action = "references";
				gD.action = "declaration";
				gI.action = "implementation";
				"<leader>ca".action = "code_action";
				"<leader>rn" = "rename";
			};
			diagnostic = {
				"<leader>e".action = "open_float";
				"<leader>q".action = "setloclist";
				"[d".action = "goto_next";
				"]d".action = "goto_prev";
			};
		};
	};

	plugins = {
		# lsp-lines.enable = true;
		# lsp-format.enable = true;
	};

	extraPlugins = with pkgs.vimPlugins; [
    ansible-vim
  ];
}
