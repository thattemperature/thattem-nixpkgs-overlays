{
  lib,
  stdenvNoCC,
  fetchFromGitHub,
}:

stdenvNoCC.mkDerivation {

  pname = "gnome-shell-extension-thattem-gnome-extension";
  version = "0-unstable-2026-07-03";

  src = fetchFromGitHub {
    owner = "thattemperature";
    repo = "thattem-gnome-extension";
    rev = "144ea5fe9b88818ebb142303fb9f72898834f0c4";
    hash = "sha256-52TtFHa2y7SiMRWRoCPgpPXxPMIROnCMP+qjz3nqMlk=";
  };

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
