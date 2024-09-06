{ config, pkgs, lib, ... }:
    {
        #login manager
        services.xserver.displayManager.sddm.enable = true;

        # enable Sway window manager
        programs.sway = {
            enable = true;
            wrapperFeatures.gtk = true;
        };

        programs.waybar = {
            enable = true;
        }

        environment.systemPackages = with pkgs; [
            #grim # screenshot functionality
            #slurp # screenshot functionality
            kitty
            wl-clipboard # wl-copy and wl-paste for copy/paste from stdin / stdout
            mako # notification system developed by swaywm maintainer
            wofi
    ];

    # Enable the gnome-keyring secrets vault.
    # Will be exposed through DBus to programs willing to store secrets.
    services.gnome.gnome-keyring.enable = true;

}
