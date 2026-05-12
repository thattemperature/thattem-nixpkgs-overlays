{
  # Basic
  melpaBuild,
  fetchFromGitHub,
  # Dependencies
  cond-let,
  thattem-mode-line,
}:

melpaBuild {

  pname = "thattem-window-actions";
  version = "0-unstable-2026-05-12";

  src = fetchFromGitHub {
    owner = "thattemperature";
    repo = "thattem-window-actions";
    rev = "94e36368880a19d17b281c31a09a36d8dd7bd29d";
    hash = "sha256-5R4JEs1wcsyfGee9L6pyzAyC5dN1x5mGl//8BAxnRrU=";
  };

  packageRequires = [
    cond-let
    thattem-mode-line
  ];

}
