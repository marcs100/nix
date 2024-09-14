{ config, pkgs, ... }:
{

    virtualisation.containers.enable = true; 
    virtualisation.podman = {
         enable = true;
        dockerCompat = true;

    };


    environment.systemPackages = [
        pkgs.vim #this will be managed by home manager
        pkgs.brave
        pkgs.git
        pkgs.curl
        pkgs.wget
        pkgs.btop
        pkgs.htop
        pkgs.syncthing
        pkgs.bitwarden-desktop
        pkgs.element-desktop
        pkgs.discord
        pkgs.terminus-nerdfont
        pkgs.font-awesome
        pkgs.distrobox
        pkgs.podman
        pkgs.fastfetch
        pkgs.libreoffice-qt6-fresh
        pkgs.neovim
        pkgs.helix
        #pkgs.scribe-cli
        #(pkgs.callPackage "path:/home/marc/nix/packages/scribe-cli/" {})
  ];

  #nixpkgs.config.packageOverrides = pkgs: {
  #      scribe-cli = pkgs.callPackage /home/marc/nix/packages/scribe-cli/default.nix {};
  #};
}
