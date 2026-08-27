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
  version = "0-unstable-2026-09-22";

  src = fetchFromGitHub {
    owner = "thattemperature";
    repo = "thattem-tab-bar";
    rev = "7324babb54ff7f93a9613bdecf8727a3b9d1cb66";
    hash = "sha256-euf8x40qnhEzJXg2sMLTFxAJv50qH0H+HwHTAv/Fkes=";
  };

  packageRequires = [
    nerd-icons
  ];

  postPatch = ''
    substituteInPlace thattem-tab-bar-special-items.el \
      --replace-fail "(file-name-directory (locate-library \"thattem-tab-bar\"))" \
                     "\"${lib.getLib thattem-emacs-library}/lib/\""
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
