{ config, pkgs, ... }:
{
    
    # Enable the plasma Desktop Environment.
    services.xserver.displayManager.sddm.enable = true;
    services.xserver.desktopManager.plasma6.enable = true;
    
    programs.kdeconnect = {
        enable = true;
    };
    
    #environment.excludePackages = with pkgs; [
    #  # for packages that are pkgs.*   
    #];
    
   environment.systemPackages = with pkgs; [
      kdePackages.elisa
      kdePackages.breeze
      kdePackages.kate
      kdePackages.dolphin
      kdePackages.filelight
      kdePackages.konsole
      kdePackages.discover
	
  ];
  
}
