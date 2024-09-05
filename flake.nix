{
  description = "Main Vault-Tec flake";

  inputs = {
    # NixOS official package source, using the nixos-23.11 branch here
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs, ... }@inputs: {
    # Please replace my-nixos with your hostname
    nixosConfigurations.Vault-Tec = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        # Import the previous configuration.nix we used,
        # so the old configuration file still takes effect
        #./configuration.nix
        ./hardware-configuration.nix
        ./system/boot.nix
        ./system/settings.nix
        ./system/system_pkgs.nix
        ./system/gnome.nix
        ./system/services.nix
        ./system/users.nix
      ];
    };
  };
}
