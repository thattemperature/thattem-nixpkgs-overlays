{
  # Basic
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
  version = "0-unstable-2026-03-25";

  src = fetchFromGitHub {
    owner = "thattemperature";
    repo = "thattem-emacs-library";
    rev = "2ab13cddbbd4870ecc5b0c9ba430e09397976806";
    hash = "sha256-zivrkXg2kfxvr5nf2Vn99DtGGzfbKG0zGXbrtz58zL0=";
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

}
