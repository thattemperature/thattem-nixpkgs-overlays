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
  version = "0-unstable-2026-05-07";

  src = fetchFromGitHub {
    owner = "thattemperature";
    repo = "thattem-tab-bar";
    rev = "69f37f76dbb0bb58c2594a00c28f27ef9a50e3f8";
    hash = "sha256-PzIIW75r/Uf0jgh6iXbp3xuu1DoVhV1R8qYndsOqBmA=";
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
