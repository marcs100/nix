{ config, pkgs, ... }:
{

    virtualisation.containers.enable = true; 
    virtualisation.podman = {
         enable = true;
        dockerCompat = true;	

    };

    environment.systemPackages = with pkgs; [
        vim #this will be managed by home manager
        brave
        git
        curl
        wget
        btop
        htop
        syncthing
        bitwarden-desktop
        fractal
        discord
        terminus-nerdfont
        font-awesome
        distrobox  
        podman
        fastfetch
        libreoffice-qt6-fresh
  ];
}
