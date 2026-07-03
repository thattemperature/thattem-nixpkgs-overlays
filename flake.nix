{

  description = "Thattemperature's nixpkgs overlays";

  outputs =
    { self, ... }:

    {
      overlays = {

        default = import ./pkgs/top-level (
          with self.overlays;
          [
            gnome-extensions
            emacs-packages
            by-name
          ]
        );

        gnome-extensions = import ./pkgs/top-level/gnome-extensions-overlay.nix ./pkgs/desktops/gnome/extensions/manuallyPackaged.nix;

        emacs-packages = import ./pkgs/top-level/emacs-packages-overlay.nix ./pkgs/applications/editors/emacs/elisp-packages/manual-packages.nix;

        by-name = import ./pkgs/top-level/by-name-overlay.nix ./pkgs/by-name;

      };
    };

}
