{pkgs, ...}: {
  plugins.treesitter = {
    enable = true;

    grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
      lua
      bash
      nix
      python

      javascript
      typescript
      php
      html
      css

      json
      xml
      yaml
      toml

      cmake
      make

      markdown
      regex

      go
      java
      kotlin
      haskell

      c
      cpp
      rust

      typst
    ];

    settings = {
      auto_install = true;
      ensure_installed = [
        "git_config"
        "git_rebase"
        "gitattributes"
        "gitcommit"
        "gitignore"
      ];
      install.compilers = ["zig "];

      indent_enable = true;
      highlight.enable = true;

      incremental_selection = {
        enable = true;
        keymaps = {
          init_selection = false;
          node_decremental = "grm";
          node_incremental = "grn";
          scope_incremental = "grc";
        };
      };

      sync_install = false;
    };
  };

  extraPackages = [
    pkgs.zig
  ];
}
