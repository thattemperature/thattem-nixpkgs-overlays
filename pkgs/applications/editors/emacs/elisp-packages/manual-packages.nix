{ lib, pkgs }:

self:

let

  inherit (self) callPackage;

in

lib.packagesFromDirectoryRecursive {
  inherit callPackage;
  directory = ./manual-packages;
}
// { }
