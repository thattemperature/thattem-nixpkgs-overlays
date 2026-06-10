{
  # Basic
  lib,
  melpaBuild,
  fetchFromGitHub,
  # Dependencies
  dash,
  flymake,
  nerd-icons,
  projectile,
}:

melpaBuild {

  pname = "thattem-mode-line";
  version = "0-unstable-2026-05-17";

  src = fetchFromGitHub {
    owner = "thattemperature";
    repo = "thattem-mode-line";
    rev = "75a50230f1929a97aeabfe6f3442a9cefe882317";
    hash = "sha256-usT0NXSkT3L43AfNRvQIOp/0y64NB7+hIfBJRY5ouWk=";
  };

  packageRequires = [
    dash
    flymake
    nerd-icons
    projectile
  ];

  meta = {
    description = "Custom Emacs mode-line with project-aware segments and nerd-icons";
    homepage = "https://github.com/thattemperature/thattem-mode-line";
    license = lib.licenses.gpl3;
    maintainers = with lib.maintainers; [ thattemperature ];
  };

}
