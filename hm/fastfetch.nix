{ config, pkgs, ... }:

{
  programs.fastfetch = {
    enable = true;

    settings = {
      logo = {
        source = "nixos_small";
        padding = {
          top = 0;
          left = 2;
          right = 2;
        };
      };

      display = {
        separator = ": ";
        color = {
          keys = "blue";
          title = "cyan";
        };
        key = {
          width = 10;
          type = "string";
        };
      };

      modules = [
        "title"
        "separator"
        {
          type = "os";
          key = "OS";
        }
        {
          type = "kernel";
          key = "Kernel";
        }
        {
          type = "host";
          key = "Host";
        }
        {
          type = "cpu";
          key = "CPU";
        }
        {
          type = "memory";
          key = "Mem";
          percent = {
            type = 3;
            green = 30;
            yellow = 70;
          };
        }
        {
          type = "shell";
          key = "Shell";
        }
        {
          type = "wm";
          key = "WM";
        }
        {
          type = "uptime";
          key = "Uptime";
        }
      ];
    };
  };
}
