{
	plugins.lsp.servers = {
		lua_ls.enable = true;
		jdtls.enable = true;
		ts_ls.enable = true;
		jsonls.enable = true;
		kotlin_language_server.enable = true;
		nixd.enable = true;
		tinymist = {
			enable = true;
			extraOptions = {
				offset_encoding = "utf-8";
			};
			settings = {
				exportPdf = "onSave";
			};
		};
		clangd.enable = true;
	};
}
