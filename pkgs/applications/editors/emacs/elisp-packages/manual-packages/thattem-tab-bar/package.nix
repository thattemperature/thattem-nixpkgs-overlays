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
  version = "0-unstable-2026-08-27";

  src = fetchFromGitHub {
    owner = "thattemperature";
    repo = "thattem-tab-bar";
    rev = "06aad7a89a60e04e1d82983ff432f6f932140337";
    hash = "sha256-RG7dGdlDjy/sPC82hf5dMJrYTsEB7c0Si0uxyA45s+E=";
  };

  packageRequires = [
    nerd-icons
  ];

  postPatch = ''
    substituteInPlace thattem-tab-bar-special-items.el \
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
