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
  version = "0-unstable-2026-04-12";

  src = fetchFromGitHub {
    owner = "thattemperature";
    repo = "thattem-tab-bar";
    rev = "fc815b3a14bdce1bb765ef07fd3075f648cae901";
    hash = "sha256-cRCj7gj4S0kWz8C/aJHhr4jQ2ta4udTtXaB0vY8a1eA=";
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
