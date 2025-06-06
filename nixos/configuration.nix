{
  config,
  pkgs,
  ...
}: {
  imports = [
    # Include the results of the hardware scan.
    ./hardware-configuration.nix
  ];
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  networking.hostName = "nxs"; # Define your hostname.
  virtualisation.docker.enable = true;
  hardware.bluetooth.enable = true; # enables support for Bluetooth
  hardware.bluetooth.powerOnBoot = true; # powers up the default Bluetooth controller on boot
  networking.networkmanager.enable = true;
  time.timeZone = "America/New_York";
  i18n.defaultLocale = "en_US.UTF-8";
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_US.UTF-8";
    LC_IDENTIFICATION = "en_US.UTF-8";
    LC_MEASUREMENT = "en_US.UTF-8";
    LC_MONETARY = "en_US.UTF-8";
    LC_NAME = "en_US.UTF-8";
    LC_NUMERIC = "en_US.UTF-8";
    LC_PAPER = "en_US.UTF-8";
    LC_TELEPHONE = "en_US.UTF-8";
    LC_TIME = "en_US.UTF-8";
  };

 programs.nix-ld.enable = true;
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  programs.steam = {
    enable = true;
    package = pkgs.steam.override {
      extraLibraries = p:
        with p; [
          (lib.getLib networkmanager)
        ];
    };
  };


  hardware.pulseaudio.enable = false;  # optional if using pipewire
  services.pipewire = {
    enable = true;
    audio.enable = true;
    alsa.enable = true;
    pulse.enable = true;
  };



  users.users.headset = {
    isNormalUser = true;
    description = "headset";
    extraGroups = ["networkmanager" "wheel" "libvirtd"];
    packages = with pkgs; [];
  };

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    home-manager
    git
    mpd
    ncmpcpp
    idevicerestore
    mpd-mpris
    virt-manager
    virt-viewer
    spice spice-gtk
    spice-protocol
    win-virtio
    win-spice
    glslang
    libdrm
    libnotify
    openssl
    eww
  ];

  # Hyprland
  programs.hyprland.enable = true;




  programs.dconf.enable = true;
# Virt
  virtualisation = {
    libvirtd = {
      enable = true;
      qemu = {
        swtpm.enable = true;
        ovmf.enable = true;
        ovmf.packages = [ pkgs.OVMFFull.fd ];
      };
    };
    spiceUSBRedirection.enable = true;
  };


services.spice-vdagentd.enable = true;
services.printing.enable = true;

 hardware.opentabletdriver = {
 	enable = true;
	daemon.enable = true;
};
programs.zsh.enable = true;
users.users.headset.shell = pkgs.zsh;


  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "24.11"; # Did you read the comment?

  nix.settings.experimental-features = ["nix-command" "flakes"];
}
