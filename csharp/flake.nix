{
  description = "Flake utils demo";

  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = {
    self,
    nixpkgs,
    flake-utils,
  }:
    flake-utils.lib.eachDefaultSystem (
      system: let
        pkgs = import nixpkgs {
          inherit system;
        };
      in {
        devShell = pkgs.mkShell.override {stdenv = pkgs.clangStdenv;} {
          nativeBuildInputs = with pkgs; [
            dotnet-sdk
            omnisharp-roslyn
          ];

          buildInputs = [];
        };
      }
    );
}
