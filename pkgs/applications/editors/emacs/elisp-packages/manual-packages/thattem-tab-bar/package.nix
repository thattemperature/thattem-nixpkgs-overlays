{
  # Basic
  lib,
  melpaBuild,
  fetchFromGitHub,
  # Emacs dependencies
  nerd-icons,
  # Other dependencies
  wmctrl,
  thattem-emacs-library,
}:

melpaBuild {

  pname = "thattem-tab-bar";
  version = "0-unstable-2026-05-09";

  src = fetchFromGitHub {
    owner = "thattemperature";
    repo = "thattem-tab-bar";
    rev = "416932fc84b6fbc6f091473d2b654fc8a6523e5d";
    hash = "sha256-1Eyh0bbKyd9crrHJyroFnrRjxLpQRDoVnu1IKn+iIdw=";
  };

  packageRequires = [
    nerd-icons
  ];

  postPatch = ''
    substituteInPlace thattem-tab-bar-new-items.el \
      --replace-fail "(defcustom thattem-tab-bar-wmctrl-executable \"wmctrl\"" \
                     "(defcustom thattem-tab-bar-wmctrl-executable \"${lib.getExe wmctrl}\"" \
      --replace-fail "\"/usr/local/lib/libthattem_emacs_library.so\"" \
                     "\"${lib.getLib thattem-emacs-library}/lib/libthattem_emacs_library.so\""
  '';

}
