{ config, pkgs, ... }:
{

    virtualisation.containers.enable = true; 
    virtualisation.podman = {
         enable = true;
        dockerCompat = true;	

    };

    environment.systemPackages = with pkgs; [
        vim
        brave
        git
        curl
        wget
        syncthing
        bitwarden-desktop
        fractal
        discord
        terminus-nerdfont
        distrobox  
        podman
        fastfetch
  ];
}
