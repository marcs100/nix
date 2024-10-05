{ config, pkgs, ... }:
{    
    # Enable the X11 windowing system. Can I safley remove this????
    services.xserver.enable = true;
    
    # Flatpak
    services.flatpak.enable = true;
    
    # Configure keymap in X11
    services.xserver.xkb = {
        layout = "gb";
        variant = "";
    };

    # Enable networking
    networking.networkmanager.enable = true;
    
    #enable virtulisation
    virtualisation.containers.enable = true; 
        virtualisation.podman = {
        enable = true;
        #dockerCompat = true;
    };

    # networking.firewall = {
    #     enable = true;
    #     allowedTCPPorts = [ 80 443 8096 8920 ];
    #     allowedUDPPortRanges = [
    #         { from = 4000; to = 4007; }
    #             { from = 8000; to = 8010; }
    #     ];
    # };

    
    # security.acme = {
    #     acceptTerms = true;
    #     defaults.email = "marc+marcs100@gmail.com";
    # };
    
    # services.nginx = {
    #     enable = true;
    #     recommendedProxySettings = true;
    #     recommendedTlsSettings = true;
    #     # other Nginx options
    #     virtualHosts."marcs100.duckdns.org" =  {
    #         enableACME = true;
    #         forceSSL = true;
    #         locations."/" = {
    #             proxyPass = "http://192.168.1.114:80";
    #             #proxyPass = "http://127.0.0.1:8096";
    #             proxyWebsockets = true; # needed if you need to use WebSocket
    #             extraConfig =
    #             # required when the target is also TLS server with multiple hosts
    #             "proxy_ssl_server_name on;" +
    #             # required when the server wants to use HTTP Authentication
    #             "proxy_pass_header Authorization;"
    #             ;
    #         };
    #     };
    # };

    #enable docker
    virtualisation.docker.enable = true;
    
    # Enable CUPS to print documents.
    services.printing.enable = true;

    # Enable sound with pipewire.
    hardware.pulseaudio.enable = false;
    security.rtkit.enable = true;
    services.pipewire = {
        enable = true;
        alsa.enable = true;
        alsa.support32Bit = true;
        pulse.enable = true;
        # If you want to use JACK applications, uncomment this
        #jack.enable = true;

        # use the example session manager (no others are packaged yet so this is enabled by default,
        # no need to redefine it in your config for now)
        #media-session.enable = true;
    };
}
