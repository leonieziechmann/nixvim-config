{
  plugins.gitblame = {
    enable = true;

    settings = {
      enabled = false;
      date_format = "%r";
      delay = 0;
      virtual_text_column = 30;
      message_template = ''<author> (<date>) "<summary>"'';
    };
  };

  keymaps = [
    {
      action = "<cmd>GitBlameToggle<CR>";
      key = "<leader>b";
      options = {
        silent = true;
      };
    }
  ];
}
