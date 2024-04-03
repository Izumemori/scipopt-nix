{
  description = "My Optimization Project";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.11";

    scipopt-nix = {
      url = "git+ssh://git@git.or.rwth-aachen.de/jgatzweiler/scipopt-nix?ref=main";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    nixpkgs,
    scipopt-nix,
    ...
  }: let
    systems = [
      "x86_64-linux"
      "aarch64-linux"
    ];
    eachSystems = f:
      nixpkgs.lib.genAttrs systems (
        system:
          f {
            inherit system;
            pkgs = nixpkgs.legacyPackages.${system};
            scipoptPkgs = scipopt-nix.packages."${system}";
          }
      );
  in {
    devShells = eachSystems (
      {
        pkgs,
        scipoptPkgs,
        ...
      }: {
        default = pkgs.mkShell {
          name = "my-optimization-project";

          packages = with pkgs; [(python3.withPackages (ps: [scipoptPkgs.pyscipopt]))];
        };
      }
    );
  };
}
