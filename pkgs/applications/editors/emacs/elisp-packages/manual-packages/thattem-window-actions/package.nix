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
  version = "0-unstable-2026-05-13";

  src = fetchFromGitHub {
    owner = "thattemperature";
    repo = "thattem-window-actions";
    rev = "dfbbd58bc38380f74fde4765481766d1b4d1219a";
    hash = "sha256-Q+dHPrpUUYNR9o2EdiLMpBpyils/8UwXeCpF1mkiavw=";
  };

  packageRequires = [
    cond-let
    thattem-mode-line
  ];

  meta = {
    description = "Emacs utility for window manipulation actions";
    homepage = "https://github.com/thattemperature/thattem-window-actions";
    license = lib.licenses.gpl3;
    maintainers = with lib.maintainers; [ thattemperature ];
  };

}
