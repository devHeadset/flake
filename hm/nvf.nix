{
  pkgs,
  nvf,
  lib,
  inputs,
  ...
}: {
  programs.nvf = {
    enable = true;

    # Your settings need to go into the `settings` attribute set
    # Most settings are documented in the nvf manual's appendix
    settings = {
      vim = {
        # Enable custom theming options
        theme = {
          enable = true;
          name = "catppuccin";
          style = "mocha";
          transparent = false;
        };

        # Enable Treesitter
        telescope.enable = true;
        viAlias = true;
        vimAlias = true;


        # Language and plugin configurations
        languages = {
          enableLSP = true;
          enableFormat = true;
          enableTreesitter = true;
          enableExtraDiagnostics = true;

          nix.enable = true;
          markdown.enable = true;
          bash.enable = true;
          clang.enable = true;
          css.enable = true;
          html.enable = true;
          ts.enable = true;
          lua.enable = true;
          python.enable = true;
          typst.enable = true;

          rust = {
            enable = true;
            crates.enable = true;
          };
          nim.enable = false; # Nim LSP is broken on Darwin (See: https://github.com/PMunch/nimlsp/issues/178)
        };

        # Statusline and tabline configurations
        statusline = {
          lualine = {
            enable = true;
            theme = "catppuccin";
          };
        };

        # Filetree configuration
        filetree = {
          neo-tree = {
            enable = true;
          };
        };

        # Treesitter context display
        treesitter.context.enable = true;

        # Autocomplete and snippet support
        autocomplete.nvim-cmp.enable = true;

        # Keybind helpers
        binds = {
          whichKey.enable = true;
          cheatsheet.enable = true;
        };

        # Git integration
        git = {
          enable = true;
          gitsigns = {
            enable = true;
            codeActions.enable = false; # Prevent annoying debug messages
          };
        };

        # Dashboard settings
        dashboard = {
          alpha.enable = true;
        };

        # Session management
        session = {
          nvim-session-manager.enable = false;
        };

        # Gesture support
        gestures = {
          gesture-nvim.enable = false;
        };

        # Discord presence
        presence = {
          neocord.enable = true;
        };
      };
    };
  };
}

