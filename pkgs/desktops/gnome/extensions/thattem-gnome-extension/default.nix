{
  lib,
  stdenvNoCC,
  fetchFromGitHub,
}:

stdenvNoCC.mkDerivation {

  pname = "gnome-shell-extension-thattem-gnome-extension";
  version = "0-unstable-2026-11-09";

  src = fetchFromGitHub {
    owner = "thattemperature";
    repo = "thattem-gnome-extension";
    rev = "4a19936e8578c915c93e09c772c29b35d119a11d";
    hash = "sha256-J9C5XP5H1vXCcHZLRIuVdyzG9YnJmxCWvUpa7ulGjSA=";
  };

  strictDeps = true;
  __structuredAttrs = true;

  installPhase = ''
    runHook preInstall

    DEST_DIR=$out/share/gnome-shell/extensions/thattem-gnome-extension@thattemperature
    install -D *.json -t $DEST_DIR/
    install -D *.xml -t $DEST_DIR/
    install -D *.js -t $DEST_DIR/

    runHook postInstall
  '';

  passthru = {
    extensionUuid = "thattem-gnome-extension@thattemperature";
    extensionPortalSlug = "thattem-gnome-extension";
  };

}
