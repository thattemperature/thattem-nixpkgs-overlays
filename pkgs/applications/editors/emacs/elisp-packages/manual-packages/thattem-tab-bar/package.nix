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
  version = "0-unstable-2026-09-24";

  src = fetchFromGitHub {
    owner = "thattemperature";
    repo = "thattem-tab-bar";
    rev = "d44d4f0e9d7dfc1de3ae98a236156171152deddc";
    hash = "sha256-tUYZ4/pCDUzy5xNcZ5dOh4z9guXeWCL0IogyNP/Gv9k=";
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
