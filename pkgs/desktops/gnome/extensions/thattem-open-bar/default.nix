{
  lib,
  stdenvNoCC,
  fetchFromGitHub,
  glib,
}:

stdenvNoCC.mkDerivation {
  pname = "gnome-shell-extension-thattem-open-bar";
  version = "0-unstable-2026-11-09";

  src = fetchFromGitHub {
    owner = "thattemperature-fork";
    repo = "openbar";
    rev = "35a59247b2383be85b68ff30a025758dd0c83daf";
    hash = "sha256-YZMJhwDv/oWbAyW8nBs6r5+UQYxF/hw3JSeUCDX5WGw=";
  };

  sourceRoot = "source/openbar@neuromorph";

  strictDeps = true;
  __structuredAttrs = true;

  nativeBuildInputs = [ glib ];

  buildPhase = ''
    runHook preBuild

    glib-compile-schemas --strict schemas

    runHook postBuild
  '';

  installPhase = ''
    runHook preInstall

    mkdir -p "$out/share/gnome-shell/extensions"
    cp -r -T . "$out/share/gnome-shell/extensions/openbar@neuromorph"

    runHook postInstall
  '';

  passthru = {
    extensionUuid = "openbar@neuromorph";
    extensionPortalSlug = "thattem-open-bar";
  };

  meta = {
    description = "Open Bar fork with GNOME Shell 50 support and styling fixes";
    homepage = "https://github.com/thattemperature-fork/openbar";
    license = lib.licenses.gpl2Plus;
    platforms = lib.platforms.linux;
  };
}
