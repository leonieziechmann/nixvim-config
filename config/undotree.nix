{
  plugins.undotree = {
    enable = true;

    settings = {
      TreeNodeShape = ''○'';
      TreeReturnShape = ''╲'';
      TreeSplitShape = ''╱'';
      TreeVertShape = ''│'';
    };
  };

  keymaps = [
    {
      action = "<cmd>UndotreeToggle<CR><cmd>UndotreeFocus<CR>";
      key = "<leader>u";
      options = {
        silent = true;
      };
    }
  ];
}
