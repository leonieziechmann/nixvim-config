{ ... }:
let
	map = mode: key: action: { mode = mode; key = key; action = action; };
in {
	plugins.smear-cursor = {
		enable = true;
	};

	plugins.flash = {
		enable = true;

		settings.search.mode = "fuzzy";
	};
	keymaps = [
		(map [ "n" "x" "o" ] "<leader>f" ''<cmd>lua require("flash").jump()<cr>'')
		(map [ "n" ] "<leader>F" ''<cmd>lua require("flash").toggle()<cr>'')
	];
}
