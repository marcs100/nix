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
        element-desktop
        discord
        terminus-nerdfont
        font-awesome
        distrobox
        podman
        fastfetch
        libreoffice-qt6-fresh
        neovim
        helix
        github-desktop
        #pkgs.scribe-cli
        #(pkgs.callPackage "path:/home/marc/nix/packages/scribe-cli/" {})
  ];

  #nixpkgs.config.packageOverrides = pkgs: {
  #      scribe-cli = pkgs.callPackage /home/marc/nix/packages/scribe-cli/default.nix {};
  #};
}
