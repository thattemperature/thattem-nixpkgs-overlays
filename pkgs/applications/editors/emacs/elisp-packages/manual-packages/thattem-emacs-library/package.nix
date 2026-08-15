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
  version = "0-unstable-2026-08-15";

  src = fetchFromGitHub {
    owner = "thattemperature";
    repo = "thattem-emacs-library";
    rev = "f2087dcec84b30a53b7740177f418e54dce79762";
    hash = "sha256-ylYhjAQx5MY2XU7Zbc34MRJCzgy+VMpNT2w3VzIFfZA=";
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
    maintainers = with lib.maintainers; [
      thattemperature
    ];
  };

}
