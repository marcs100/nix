{ config, pkgs, ... }:
{
 environment.systemPackages = with pkgs; [
  #  vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
  #  wget
	vim
	brave
	git
	curl
	wget
	syncthing
	bitwarden-desktop
	fractal
	discord
  ];
}
