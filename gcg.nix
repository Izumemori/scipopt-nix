{
  pkgs ? import <nixpkgs> {},
  scip ? pkgs.callPackage ./scip.nix {},
  ...
}:
pkgs.stdenv.mkDerivation rec {
  pname = "gcg";
  version = "3.5.4";

  src = builtins.fetchGit {
    url = "git@git.or.rwth-aachen.de:gcg/gcg.git";
    ref = "v${builtins.replaceStrings ["."] [""] version}";
    rev = "5f944b20d4ac6eaca27445dacd0e188db3294d60";
  };

  nativeBuildInputs = with pkgs; [
    cmake
  ];

  buildInputs =
    (with pkgs; [
      cliquer
      gmp
      gsl
    ])
    ++ [scip];

  enableParallelBuilding = true;
  doCheck = true;

  cmakeFlags = [
    "-DSYM=none"
  ];

  preConfigure = ''
    echo "#define GCG_GITHASH \"${src.shortRev}\"" > ./src/githash.c
  '';
}
