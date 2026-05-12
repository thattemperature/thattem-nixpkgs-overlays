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
  version = "0-unstable-2026-05-12";

  src = fetchFromGitHub {
    owner = "thattemperature";
    repo = "thattem-mode-line";
    rev = "79227f450ade326b69f18468fecb5c27fc20c706";
    hash = "sha256-6vgKqK23NVrmDcrQVxsuH8shdImPvLFDTtArAd1VzDY=";
  };

  packageRequires = [
    dash
    flymake
    nerd-icons
    projectile
  ];

}
