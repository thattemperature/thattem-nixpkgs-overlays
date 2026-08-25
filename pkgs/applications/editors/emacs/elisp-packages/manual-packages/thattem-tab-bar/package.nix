{
  # Basic
  lib,
  melpaBuild,
  fetchFromGitHub,
  # Emacs dependencies
  nerd-icons,
  # Other dependencies
  thattem-emacs-library,
}:

melpaBuild {

  pname = "thattem-tab-bar";
  version = "0-unstable-2026-08-25";

  src = fetchFromGitHub {
    owner = "thattemperature";
    repo = "thattem-tab-bar";
    rev = "5e0f6daca8738d684297d7ca709e2709ac193f91";
    hash = "sha256-BcbnBpum5OdLTcrIfHLH9B+pnhKext6DW3gOkEcoZ/g=";
  };

  packageRequires = [
    nerd-icons
  ];

  postPatch = ''
    substituteInPlace thattem-tab-bar-new-items.el \
      --replace-fail "\"/usr/local/lib/libthattem_emacs_library.so\"" \
                     "\"${lib.getLib thattem-emacs-library}/lib/libthattem_emacs_library.so\""
  '';

  meta = {
    description = "Enhanced Emacs tab-bar with workspace management";
    homepage = "https://github.com/thattemperature/thattem-tab-bar";
    license = lib.licenses.gpl3;
    maintainers = with lib.maintainers; [
      thattemperature
    ];
  };

}
