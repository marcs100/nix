{ config, pkgs, ... }:
{
    
    # Enable the plasma Desktop Environment.
    services.xserver.displayManager.sddm.enable = true;
    services.xserver.desktopManager.plasma6.enable = true;
  
    environment.pkgs.excludePackages = (with pkgs; [
      # for packages that are pkgs.*
      
      
      
      
    ]) ++ (with pkgs.kdepackages; [
      # for packages that are pkgs.kdepackages.*
      
    ]);
  
   environment.systemPackages = with pkgs; [
	kate
	dolphin
	filelight
	
  ];
};
