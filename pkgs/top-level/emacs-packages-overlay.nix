baseDirectory:

self: super: {

  emacsPackagesFor =
    emacs:
    ((super.emacsPackagesFor emacs).overrideScope (
      eself: esuper:

      let

        thattemPackages = import baseDirectory {
          inherit (super) lib;
          inherit (self) pkgs;
        } eself;

      in

      super.lib.mapAttrs (
        name: package: if builtins.hasAttr name esuper then esuper."${name}" else package
      ) thattemPackages
      // {
        inherit thattemPackages;
      }
    ));

}
