let
  kmap = mode: key: action: {inherit mode key action;};
in {
  plugins = {
    smear-cursor.enable = true;

    flash = {
      enable = true;
      settings.search.mode = "fuzzy";
    };
  };

  keymaps = [
    (kmap ["n" "x" "o"] "<leader>f" ''<cmd>lua require("flash").jump()<cr>'')
    (kmap ["n"] "<leader>F" ''<cmd>lua require("flash").toggle()<cr>'')
  ];
}
