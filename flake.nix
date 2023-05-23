{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/22.11";
  };

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };

    in
    {

      devShells.${system} = {
        default = pkgs.mkShell {
          buildInputs = [
            pkgs.fuse
            pkgs.python3
            pkgs.python3Packages.pyfuse3
          ];
        };

        c = pkgs.mkShell {
          buildInputs = [
            pkgs.gcc
          ];
        };

        py = pkgs.mkShell {
          buildInputs = [
            pkgs.python3
          ];
        };
      };


    };
}
