{pkgs ? import <nixpkgs> {}}:
with pkgs;
lib.overrideDerivation (callPackage ./nix { enableTests = true; }) (o: {
	name = "slinger";
	src = ./nix/local.tgz;
})
