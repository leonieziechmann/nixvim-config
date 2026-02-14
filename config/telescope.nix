{
  plugins.telescope = {
    enable = true;
    extensions = {
      fzf-native.enable = true;
      fzf-native.settings = {
        case_mode = "smart_case";
      };
    };

    keymaps = {
      "<leader>ff" = "find_files";
      "<leader>fg" = "live_gerp";
    };
  };
}
