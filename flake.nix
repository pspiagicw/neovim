{
  description = "Neovim configuration with stylua";

  inputs = {
    # Nixpkgs repository
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.05";
  };

  outputs = {
    self,
    nixpkgs,
    ...
  }: {
    devShells = {
      x86_64-linux.default = let
        pkgs = import nixpkgs {system = "x86_64-linux";};
      in
        pkgs.mkShell {
          buildInputs = [
            pkgs.stylua
            pkgs.lua-language-server
          ];
        };

      aarch64-linux.default = let
        pkgs = import nixpkgs {system = "aarch64-linux";};
      in
        pkgs.mkShell {
          buildInputs = [
            pkgs.stylua
            pkgs.lua-language-server
          ];
        };
    };
  };
}
