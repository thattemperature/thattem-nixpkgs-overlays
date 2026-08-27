{
  # Basic
  lib,
  melpaBuild,
  fetchFromGitHub,
  # Dependencies
  cond-let,
  thattem-mode-line,
}:

melpaBuild {

  pname = "thattem-window-actions";
  version = "0-unstable-2026-09-24";

  src = fetchFromGitHub {
    owner = "thattemperature";
    repo = "thattem-window-actions";
    rev = "b6dcaf7f7ae5e8018de7635d79d2b824d306daac";
    hash = "sha256-1oeirM64j2WJPiXCnSD8ispdkt43PXMO4wY4FYNrWFY=";
  };

  packageRequires = [
    cond-let
    thattem-mode-line
  ];

  meta = {
    description = "Emacs utility for window manipulation actions";
    homepage = "https://github.com/thattemperature/thattem-window-actions";
    license = lib.licenses.gpl3;
    maintainers = with lib.maintainers; [
      thattemperature
    ];
  };

}
