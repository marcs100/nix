{
  description = "A Rust and Python development environment";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs = { self , nixpkgs ,... }: let
    # system should match the system you are running on
    system = "x86_64-linux";
  in {
    devShells."${system}".default = let
      pkgs = import nixpkgs {
        inherit system;
      };
    in pkgs.mkShell {
      # 
      packages = with pkgs; [
        rustc
        cargo
        rust-analyzer
        python312
        python312Packages.tkinter
        python312Packages.python-lsp-server
        neovim
        kitty
        terminus-nerdfont
	#kdePackages.breeze
        #kdePackages.breeze-icons
        
        kdePackages.kate
 	kdePackages.konsole
      ];

      shellHook = ''
        echo "------------------------"
        echo "|   Dev Environment    |"
        echo "------------------------"
        export PS1="\e[1;31m[\u@DEV_SHELL > \e[0m"
      '';
    };
  };
}
