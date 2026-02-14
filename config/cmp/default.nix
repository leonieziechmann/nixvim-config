{
  plugins.cmp = {
    enable = true;

    settings = {
      autoEnableSources = true;

      performance = {
        debounce = 60;
        fetchingTimeout = 200;
        maxViewEntries = 20;
      };

      formatting = {
        fields = ["kind" "abbr" "menu"];
        format = ''
          function(_, item)
            item.kind = (kind_icons[item.kind] or item.kind)
            return item;
          end
        '';
      };

      window = {
        completion.border = "solid";
        documentation.border = "solid";
      };

      mapping = {
        "<C-n>" = "cmp.mapping.select_next_item()";
        "<C-p>" = "cmp.mapping.select_prev_item()";
        "<C-k>" = "cmp.mapping.scroll_docs(-4)";
        "<C-j>" = "cmp.mapping.scroll_docs(4)";
        "<C-y>" = "cmp.mapping.confirm({ select = true })";
      };

      sources = [
        {name = "nvim_lsp";}
        {name = "emoji";}
        {
          name = "buffer";
          option.get_bufnrs.__raw = "vim.api.nvim_list_bufs";
          keywordLength = 3;
        }
        {
          name = "path";
          keywordLength = 3;
        }
        {
          name = "luasnip";
          keywordLength = 3;
        }
      ];
    };
  };

  plugins = {
    cmp-emoji.enable = true;
    cmp-nvim-lsp.enable = true;
    cmp-buffer.enable = true;
    cmp-cmdline.enable = true;
    cmp_luasnip.enable = true;
  };

  extraConfigLua = ''
    kind_icons = {
      Text = "󰊄",
      Method = " ",
      Function = "󰡱 ",
      Constructor = " ",
      Field = " ",
      Variable = "󱀍 ",
      Class = " ",
      Interface = " ",
      Module = "󰕳 ",
      Property = " ",
      Unit = " ",
      Value = " ",
      Enum = " ",
      Keyword = " ",
      Snippet = " ",
      Color = " ",
      File = "",
      Reference = " ",
      Folder = " ",
      EnumMember = " ",
      Constant = " ",
      Struct = " ",
      Event = " ",
      Operator = " ",
      TypeParameter = " ",
    }
  '';
}
