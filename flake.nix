{
  description = "Binary Ninja Personal Linux Package";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs }: 
  let 
    system = "x86_64-linux"; 
    pkgs = import nixpkgs { inherit system; };
  in {
    packages.${system}.default = pkgs.callPackage ./binaryninja_personal_linux.nix {
      wrapQtAppsHook = pkgs.qt6Packages.wrapQtAppsHook; # Ensure wrapQtAppsHook is available
    };
  };
}

