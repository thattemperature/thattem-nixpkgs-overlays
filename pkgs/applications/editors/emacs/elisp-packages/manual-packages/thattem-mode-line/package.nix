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
    rev = "457bc9fb2e97edabe7f73493c2f4dbd7f5a4debc";
    hash = "sha256-8RLCOGN2NyNN1atQPejCPByo7TpYuHLebGkoMwqqdWE=";
  };

  packageRequires = [
    cond-let
    dash
    flymake
    nerd-icons
    projectile
  ];

}
