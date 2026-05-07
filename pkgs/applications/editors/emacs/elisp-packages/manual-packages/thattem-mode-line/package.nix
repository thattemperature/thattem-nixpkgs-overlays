{
  # Basic
  melpaBuild,
  fetchFromGitHub,
  # Dependencies
  cond-let,
  dash,
  flymake,
  nerd-icons,
  projectile,
}:

melpaBuild {

  pname = "thattem-mode-line";
  version = "0-unstable-2026-05-07";

  src = fetchFromGitHub {
    owner = "thattemperature";
    repo = "thattem-mode-line";
    rev = "f7bc147a8ee2524dd08e04976010380fbed3b126";
    hash = "sha256-1TLwKEM4qzcC5pDXgqYvDirhC+jomF99YPBAChPnMW0=";
  };

  packageRequires = [
    cond-let
    dash
    flymake
    nerd-icons
    projectile
  ];

}
