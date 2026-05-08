{
  # Basic
  melpaBuild,
  fetchFromGitHub,
  # Dependencies
  thattem-mode-line,
}:

melpaBuild {

  pname = "thattem-window-actions";
  version = "0-unstable-2026-05-08";

  src = fetchFromGitHub {
    owner = "thattemperature";
    repo = "thattem-window-actions";
    rev = "e46569551217b679648af043816ec0b7e1333873";
    hash = "sha256-gvAfrX/3K0P2cfRAO8In6lga9wj0H1roivyt1xksDr8=";
  };

  packageRequires = [
    thattem-mode-line
  ];

}
