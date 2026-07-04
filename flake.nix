{

  description = "Thattemperature's nixpkgs overlays";

  outputs =
    { self, ... }:

    {
      overlays = {

        default = import ./pkgs/top-level (
          with self.overlays;
          [
            by-name
            emacs-packages
            gnome-extensions
            workarounds
          ]
        );

        by-name = import ./pkgs/top-level/by-name-overlay.nix ./pkgs/by-name;

        emacs-packages = import ./pkgs/top-level/emacs-packages-overlay.nix ./pkgs/applications/editors/emacs/elisp-packages/manual-packages.nix;

        gnome-extensions = import ./pkgs/top-level/gnome-extensions-overlay.nix ./pkgs/desktops/gnome/extensions/manuallyPackaged.nix;

        workarounds =
          # Workaround: downgrade mihomo for clash-verge-rev
          (
            final: prev: {

              mihomo_1_19_26 = prev.mihomo.overrideAttrs (old: rec {

                version = "1.19.26";

                src = final.fetchFromGitHub {
                  owner = "MetaCubeX";
                  repo = "mihomo";
                  rev = "v${version}";
                  hash = "sha256-As0MqIGHs1Gn+aUWpeFsC231n9v7lBNmGlQdAwVWcJs=";
                };

                vendorHash = "sha256-ySpBMR/djPPs1aTw7yiCrCFxDFsvRfTJEChg8v1C408=";
              });

              clash-verge-rev = prev.clash-verge-rev.override {

                mihomo = final.mihomo_1_19_26;
              };
            }
          );

      };
    };

}
