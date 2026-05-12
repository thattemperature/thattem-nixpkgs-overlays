{
  # Basic
  melpaBuild,
  fetchFromGitHub,
  # Dependencies
  dash,
  flymake,
  nerd-icons,
  projectile,
}:

melpaBuild {

  pname = "thattem-mode-line";
  version = "0-unstable-2026-05-13";

  src = fetchFromGitHub {
    owner = "thattemperature";
    repo = "thattem-mode-line";
    rev = "0f232dc941d9419b7455eb561f3b1caba1d80594";
    hash = "sha256-irA0bVO+NpWIRyVOjrqkB3xv9TrAGWn4V7XkswO7eog=";
  };

  packageRequires = [
    dash
    flymake
    nerd-icons
    projectile
  ];

}
