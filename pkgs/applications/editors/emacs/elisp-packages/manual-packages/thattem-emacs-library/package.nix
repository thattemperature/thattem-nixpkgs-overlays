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
  version = "0-unstable-2026-05-07";

  src = fetchFromGitHub {
    owner = "thattemperature";
    repo = "thattem-emacs-library";
    rev = "37ff996a0ea26ee9ccf295f989e6c367dd6dba79";
    hash = "sha256-ml9nHouAfgSEPSIDeOJcKdxha20h3w6a0blY9LuItWc=";
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
