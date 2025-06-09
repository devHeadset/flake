{
  programs.waybar = {
    enable = true;
    settings = {
      mainBar = {
        layer = "top";
        position = "bottom";
        height = 35;
        modules-left = [ "cpu" "memory" ];
        modules-center = ["hyprland/workspaces"];
        modules-right = [ "clock" "battery" "tray" ];
        
        cpu = {
          format = "󰍛 {usage}%";
          tooltip = false;
        };
        
        memory = {
          format = "󰘚 {used}GB";
          tooltip = false;
        };
        
        clock = {
          format = "󰥔 {:%H:%M:%S}";
          interval = 1;
          tooltip = false;
        };

        battery = {
          format = "󰁹 {capacity}%";
          tooltip = false;
        };

        network = {
          format-wifi = "󰤨 {essid}";
          format-ethernet = "󰈀 {ipaddr}";
          tooltip = false;
        };
      };
    };

    style = ''
      * {
        font-family: "JetBrainsMono Nerd Font", monospace;
        font-size: 15px;
        color: #cdd6f4;
      }

      window#waybar {
        background: #1e1e2e;
        border-bottom: 2px solid #11111b;
      }

      #cpu, #memory, #clock, #battery, #network {
        background-color: #313244;
        padding: 4px 10px;
        margin: 4px 4px;
        border-radius: 8px;
      }

      #cpu {
        color: #fab387;
      }

      #memory {
        color: #f9e2af;
      }

      #clock {
        color: #89b4fa;
      }

      #battery {
        color: #a6e3a1;
      }

      #network {
        color: #94e2d5;
      }
    '';
  };
}

