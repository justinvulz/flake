{
  description = "C++ flake";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable"; # or whatever vers
  };

  outputs = { self, nixpkgs, ... }:
    let
      system = "x86_64-linux"; # your version
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      devShells.${system}.default = pkgs.mkShell {

        packages = with pkgs; [ clang-tools ]; # whatever you need

        shellHook = "";
      };
    };
}
