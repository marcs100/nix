{ config, pkgs, ... }:
{
  # Enable the GNOME Desktop Environment.
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;
  
  environment.gnome.excludePackages = (with pkgs; [
    # for packages that are pkgs.*
    gnome-tour
    gnome-music
    epiphany
    simple-scan
  ]) ++ (with pkgs.gnome; [
    # for packages that are pkgs.gnome.*
    #evince # document viewer
  ]);
  
   environment.systemPackages = with pkgs; [
	kdePackages.elisa
	kdePackages.breeze
	kdePackages.breeze-icons
	#kdePackages.kate
	gnome-software
	gnome-extension-manager
	gnome-tweaks
	gnome-boxes
	adwaita-icon-theme
	#gnome-bluetooth
	# extensions ----------
	gnomeExtensions.tray-icons-reloaded
	gnomeExtensions.dash-to-dock
	#gnomeExtensions.no-overview
	gnomeExtensions.resource-monitor
	#----------------------
	
  ];
}
