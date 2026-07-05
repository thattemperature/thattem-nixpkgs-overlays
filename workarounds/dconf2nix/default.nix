# Workaround: update dconf2nix temporarily

self: super:

{

  haskellPackages = super.haskellPackages.extend (
    hself: hsuper: {

      dconf2nix = super.haskell.lib.overrideCabal hsuper.dconf2nix (old: {

        version = "0.1.1-unstable-2026-05-21";

        src = self.fetchFromGitHub {
          owner = "thattemperature";
          repo = "dconf2nix";
          rev = "dd1dacf17ed97be48d459e6c72524872fd0e6ab6";
          hash = "sha256-P2jxSiq5aypnhk+J0W5dOqsoyjIX9l8Uz2xeRXBuSCc=";
        };

        libraryHaskellDepends = old.libraryHaskellDepends ++ [
          hself.utf8-string
        ];
      });

    }
  );

}
