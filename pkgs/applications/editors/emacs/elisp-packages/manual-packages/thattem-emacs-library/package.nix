{
  # Basic
  lib,
  stdenv,
  fetchFromGitHub,
  # Build system
  cmake,
  pkg-config,
  # Dependencies
  emacs,
  libgtop,
  libsysprof-capture,
  pcre2,
}:

stdenv.mkDerivation {

  pname = "thattem-emacs-library";
  version = "0-unstable-2026-07-03";

  src = fetchFromGitHub {
    owner = "thattemperature";
    repo = "thattem-emacs-library";
    rev = "05248a9203f9803ea5f5cb1990d94fbcfedb03ee";
    hash = "sha256-71xdWujMZmEa6VHDZIt5gw0DHSp/9weKWpUrouY0E30=";
  };

  nativeBuildInputs = [
    cmake
    pkg-config
  ];

  buildInputs = [
    emacs
    libgtop
    libsysprof-capture
    pcre2
  ];

  meta = {
    description = "Native C library for thattemperature's Emacs helper functions";
    homepage = "https://github.com/thattemperature/thattem-emacs-library";
    license = lib.licenses.gpl3;
    maintainers = with lib.maintainers; [ thattemperature ];
  };

}
