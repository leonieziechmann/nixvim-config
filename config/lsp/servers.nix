{
	plugins.lsp.servers = {
		# Script Langs
		lua_ls.enable = true;
		bashls.enable = true;
		nixd.enable = true;

		# Web Langs
		ts_ls.enable = true;
		html.enable = true;
		tailwindcss.enable = true;
		phpactor.enable = true;

		# Data Langs
		jsonls.enable = true;
		yamlls.enable = true;
		taplo.enable = true;
		sqls.enable = true;

		# General Purpose
		kotlin_language_server.enable = true;
		jdtls.enable = true;
		gopls.enable = true;
		ghcide.enable = true;

		# Systems Langs
		clangd.enable = true;
		rust_analyzer = {
			enable = true;
			installCargo = true;
			installRustc = true;
		};

		# Container
		docker_language_server.enable = true;
		docker_compose_language_service.enable = true;

		# Leonies Extras
		tinymist = {
			enable = true;
			extraOptions.offset_encoding = "utf-8";
			settings.exportPdf = "never";
		}; # ❤️Typst :3
		systemd_lsp.enable = true;
	};
}
