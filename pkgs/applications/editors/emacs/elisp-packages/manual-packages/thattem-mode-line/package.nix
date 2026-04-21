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
  version = "0-unstable-2026-03-21";

  src = fetchFromGitHub {
    owner = "thattemperature";
    repo = "thattem-mode-line";
    rev = "4d6d762ba6aa22de9b4fb6d71f17f56194a0ce47";
    hash = "sha256-G1ycUy3ZubcRYmJoUK0T6cd1LcgzichSXangU9VCzMk=";
  };

  packageRequires = [
    cond-let
    dash
    flymake
    nerd-icons
    projectile
  ];

}
