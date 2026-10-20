{
  description = "Development environment for a Rust project";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    rust-overlay.url = "github:oxalica/rust-overlay";
  };

  outputs = { nixpkgs, flake-utils, rust-overlay, ... }:
    let
      mise = builtins.fromTOML (builtins.readFile ./mise.toml);
      rustVersion = mise.tools.rust;
    in
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
          inherit system;
          overlays = [ (import rust-overlay) ];
        };
      in {
        devShells.default = pkgs.mkShell {
          packages = with pkgs; [
            rust-bin.stable.${rustVersion}.default
            cargo-deny
            cargo-machete
            git-cliff
            pkg-config
          ];

          shellHook = ''
            export PATH="$HOME/.local/share/mise/shims:$PATH"
          '';
        };
      });
}
