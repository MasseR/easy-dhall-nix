{ pkgs ? import ./nixpkgs.nix {} }:

import ./build.nix { inherit pkgs; release = import ./release.nix; } {
  simpleName = "dhall-bash-simple";
  binNames = [ "dhall-to-bash" ];
  attrName = "dhall-bash";
}
