{
  description = "Binary Ninja Personal Linux Package";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs }: 
  let 
    system = "x86_64-linux"; 
    pkgs = import nixpkgs { inherit system; };
    binaryninjaSrc = pkgs.fetchzip {
      url = "https://web.archive.org/web/20250130124707/https://cdn.binary.ninja/installers/binaryninja_free_linux.zip";
      sha256 = "sha256-reuDakafnRvJDJ2UcPnFI+a8opURFfm+g4eN26YQ/JI="; # Replace with actual sha256
    };
  in {
    packages.${system}.default = pkgs.callPackage ./binaryninja_personal_linux.nix {
      binja_src = binaryninjaSrc;
      wrapQtAppsHook = pkgs.qt6Packages.wrapQtAppsHook;
    };
  };
}
