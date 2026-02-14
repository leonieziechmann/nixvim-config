let
  kmap = mode: key: action: {inherit mode key action;};
in {
  keymaps = [
    (kmap "n" "<C-d>" "<C-d>zz")
    (kmap "n" "<C-u>" "<C-u>zz")

    (kmap "i" "aeq" "ä")
    (kmap "i" "ueq" "ü")
    (kmap "i" "oeq" "ö")
    (kmap "i" "szz" "ß")

    (kmap "i" "AEQ" "Ä")
    (kmap "i" "UEQ" "Ü")
    (kmap "i" "OEQ" "Ö")

    (kmap "i" "<C-H>" "<C-w>")
  ];
}
