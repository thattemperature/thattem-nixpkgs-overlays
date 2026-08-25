{
  # Basic
  lib,
  melpaBuild,
  fetchFromGitHub,
  # Dependencies
  flymake,
  nerd-icons,
  projectile,
}:

melpaBuild {

  pname = "thattem-mode-line";
  version = "0-unstable-2026-08-25";

  src = fetchFromGitHub {
    owner = "thattemperature";
    repo = "thattem-mode-line";
    rev = "1088185dfec23062aa20b2dfc8b23cd3f7e35fb2";
    hash = "sha256-5EF6K2+x2C1QReOTQwPvBgabB6MzFrGZ8t9WAdUNNfU=";
  };

  packageRequires = [
    flymake
    nerd-icons
    projectile
  ];

  meta = {
    description = "Custom Emacs mode-line with project-aware segments and nerd-icons";
    homepage = "https://github.com/thattemperature/thattem-mode-line";
    license = lib.licenses.gpl3;
    maintainers = with lib.maintainers; [
      thattemperature
    ];
  };

}
