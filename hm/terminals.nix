{ pkgs, ... }:
{
  programs.alacritty = {
    enable = true;
    settings = {
      
 font = {
				normal = {
					family = "JetBrains Mono Nerd Font";
					style = "Regular";
				};
				bold = {
					family = "JetBrains Mono Nerd Font";
					style = "Bold";
				};
				italic = {
					family = "JetBrains Mono Nerd Font";
					style = "Italic";
				};
				size = 14;
			};
   
};
  };
}
