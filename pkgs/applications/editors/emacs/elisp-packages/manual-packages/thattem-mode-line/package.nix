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
  version = "0-unstable-2026-05-08";

  src = fetchFromGitHub {
    owner = "thattemperature";
    repo = "thattem-mode-line";
    rev = "bd797fc9586d6419d14eeb7a81fbdcfacb9d2248";
    hash = "sha256-lIorG9XunLIKf1hVTdI+5npaB4+k7edwxhC1NgEnOTQ=";
  };

  packageRequires = [
    cond-let
    dash
    flymake
    nerd-icons
    projectile
  ];

}
