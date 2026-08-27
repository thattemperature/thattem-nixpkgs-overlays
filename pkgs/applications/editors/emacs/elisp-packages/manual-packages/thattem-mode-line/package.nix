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
  version = "0-unstable-2026-09-24";

  src = fetchFromGitHub {
    owner = "thattemperature";
    repo = "thattem-mode-line";
    rev = "3c45cf5095395a76730d5f44c7b3bac82b7a7356";
    hash = "sha256-WHy5GehyUNCI5qgSVtNxNV1SdQKgtyS5aB9KPKZ33oY=";
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
