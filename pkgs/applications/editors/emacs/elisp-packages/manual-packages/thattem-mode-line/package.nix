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
  version = "0-unstable-2026-05-11";

  src = fetchFromGitHub {
    owner = "thattemperature";
    repo = "thattem-mode-line";
    rev = "31c655902730bbdbfcfb2740b38dd9b46ded6a60";
    hash = "sha256-bpMhMypXRGJFi9iQk3hsyw+vzfytG91xXPbPSKPLzMI=";
  };

  packageRequires = [
    cond-let
    dash
    flymake
    nerd-icons
    projectile
  ];

}
