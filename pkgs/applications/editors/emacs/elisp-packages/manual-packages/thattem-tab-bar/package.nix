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
  version = "0-unstable-2026-08-20";

  src = fetchFromGitHub {
    owner = "thattemperature";
    repo = "thattem-tab-bar";
    rev = "048a05589343ba02aab35a8fb0f52e21c64f573b";
    hash = "sha256-XPjKxfXnQxqiWu6Oq06gHVyuc65M8zzO9k7P93KxNDQ=";
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
