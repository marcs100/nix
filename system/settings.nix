{ config, pkgs, inputs, ... }:
{
    #imports =
    #[ # Include the results of the hardware scan.
    #  ./hardware-configuration.nix
    #];

    zramSwap.enable = true;

    #enable automatic upgrades
    system.autoUpgrade = {
        enable = true;
        flake = inputs.self.outPath;
        #flake = "${config.users.users.gaetan.home}/server";
        flags = [
            "--update-input"
            "nixpkgs"
            "-L" # print build logs
        ];
        dates = "02:00";
        randomizedDelaySec = "45min";
    };


    #enable 3D acceleration
    hardware.graphics = {
          enable = true;
          enable32Bit = true;
    };

  

    #Persistant dev shells?????????????
    nix.extraOptions = ''
        keep-outputs = true
        keep-derivations = true

    '';
    
    # Allow unfree packages
    nixpkgs.config.allowUnfree = true;

    # List packages installed in system profile. To search, run:
    # $ nix search wget
    nix.settings.experimental-features = [ "nix-command" "flakes" ];
  
    #hardware.bluetooth.enable = true; # enables support for Bluetooth
    #hardware.bluetooth.powerOnBoot = true; # powers up the default Bluetooth controller on boot

    networking.hostName = "vortex"; # Define your hostname.
    # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

    networking.extraHosts =
    ''
        192.168.1.200 vault-tec
    '';

    # Configure network proxy if necessary
    # networking.proxy.default = "http://user:password@proxy:port/";
    # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";


    # Set your time zone.
    time.timeZone = "Europe/London";

    # Select internationalisation properties.
    i18n.defaultLocale = "en_GB.UTF-8";

    i18n.extraLocaleSettings = {
        LC_ADDRESS = "en_GB.UTF-8";
        LC_IDENTIFICATION = "en_GB.UTF-8";
        LC_MEASUREMENT = "en_GB.UTF-8";
        LC_MONETARY = "en_GB.UTF-8";
        LC_NAME = "en_GB.UTF-8";
        LC_NUMERIC = "en_GB.UTF-8";
        LC_PAPER = "en_GB.UTF-8";
        LC_TELEPHONE = "en_GB.UTF-8";
        LC_TIME = "en_GB.UTF-8";
    };

    # Some programs need SUID wrappers, can be configured further or are
    # started in user sessions.
    # programs.mtr.enable = true;
    # programs.gnupg.agent = {
    #   enable = true;
    #   enableSSHSupport = true;
    # };

    # List services that you want to enable:

    # Enable the OpenSSH daemon.
    # services.openssh.enable = true;

    # Open ports in the firewall.
    # networking.firewall.allowedTCPPorts = [ ... ];
    # networking.firewall.allowedUDPPorts = [ ... ];
    # Or disable the firewall altogether.
    # networking.firewall.enable = false;

    # This value determines the NixOS release from which the default
    # settings for stateful data, like file locations and database versions
    # on your system were taken. It‘s perfectly fine and recommended to leave
    # this value at the release version of the first install of this system.
    # Before changing this value read the documentation for this option
    # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
    system.stateVersion = "24.05"; # Did you read the comment?

}
