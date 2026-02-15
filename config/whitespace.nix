{
  opts = {
    list = true;
    listchars = {
      tab = ''▸ '';
      trail = ''·'';
    };
  };

  plugins = {
    indent-blankline = {
      enable = true;
      settings = {
        indent.char = "│";
      };
    };
    mini-indentscope = {
      enable = true;

      settings = {
        draw = {
          delay = 0;
          animation = {
            __raw = "require('mini.indentscope').gen_animation.quartic({ easing = 'in-out', duration = 12, unit = 'step' })";
          };
          priority = 2;
        };

        symbol = "┃";
      };
    };
  };
}
