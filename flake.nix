{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nix-shell.url = "github:loophp/nix-shell";
  };

  outputs = { self, nixpkgs, flake-utils, nix-shell }:
    flake-utils.lib.eachDefaultSystem
      (system:
        let
          pkgs = import nixpkgs {
            inherit system;
          };
        in
        {
          devShells = {
            default = pkgs.mkShell {
              name = "Your Project";

              buildInputs = [
                # pkgs.sops
              ];
            };
          };
        }
      );
}