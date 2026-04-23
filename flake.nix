{

  description = "Thattemperature's nixpkgs overlays";

  outputs =
    { self, ... }:

    {
      overlays = {

        default = import ./pkgs/top-level (
          with self.overlays;
          [
            emacs-pakcages
            by-name
          ]
        );

        emacs-pakcages = import ./pkgs/top-level/emacs-packages-overlay.nix ./pkgs/applications/editors/emacs/elisp-packages/manual-packages.nix;

        by-name = import ./pkgs/top-level/by-name-overlay.nix ./pkgs/by-name;

      };
    };

}
