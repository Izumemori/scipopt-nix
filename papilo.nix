{
  pkgs ? import <nixpkgs> {},
  soplex ? pkgs.callPackage ./soplex.nix {},
  ...
}: let
  papilo-src =
    (import ./_sources/generated.nix {
      inherit
        (pkgs)
        fetchgit
        fetchurl
        fetchFromGitHub
        dockerTools
        ;
    })
    .papilo;
in
  pkgs.stdenv.mkDerivation {
    inherit (papilo-src) pname src;

    version = let
      matches = builtins.match "v(.+)" papilo-src.version;
    in
      builtins.head matches;

    nativeBuildInputs = with pkgs; [cmake];

    buildInputs = with pkgs; [
      boost
      gmp
      tbb_2020_3
      soplex
      zlib
    ];

    doCheck = true;
  }
