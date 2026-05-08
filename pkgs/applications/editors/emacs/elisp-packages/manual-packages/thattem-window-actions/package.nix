{
  # Basic
  melpaBuild,
  fetchFromGitHub,
  # Dependencies
  thattem-mode-line,
}:

melpaBuild {

  pname = "thattem-window-actions";
  version = "0-unstable-2026-05-09";

  src = fetchFromGitHub {
    owner = "thattemperature";
    repo = "thattem-window-actions";
    rev = "8393801cfc68cb0cb7d33831967c1d844456d20c";
    hash = "sha256-o0AnupH0vWSn+78rfB1ZzWC4FQL9Ilb1Pgi7YuVMJ3M=";
  };

  packageRequires = [
    thattem-mode-line
  ];

}
