{
  description =
    "A collection of flake templates as starting points for your awesome projects";

  outputs = { self, nixpkgs, ... }@inputs: {
    templates = {
      cpp = {
        path = ./templates/cpp;
        description = "Sy standard c++ env.";
      };
      python-uv = {
        path = ./templates/python-uv;
        description = "Standard python env (using uv)";
      };
      python = {
        path = ./templates/python;
        description = "Standard python env.";
      };
      rust = {
        path = ./templates/rust;
        description = "Standard rust env.";
      };
    };
  };
}
