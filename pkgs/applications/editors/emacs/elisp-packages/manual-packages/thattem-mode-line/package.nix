{
  # Basic
  lib,
  melpaBuild,
  fetchFromGitHub,
  # Dependencies
  flymake,
  nerd-icons,
  projectile,
}:

melpaBuild {

  pname = "thattem-mode-line";
  version = "0-unstable-2026-08-15";

  src = fetchFromGitHub {
    owner = "thattemperature";
    repo = "thattem-mode-line";
    rev = "b33b6eb0300991d0fc77016bb3c6c098bb0cfc0d";
    hash = "sha256-oqEEuZJC3XzdJ8ygd8SQF1x9sA1BqLsrunSAIvVqoMM=";
  };

  packageRequires = [
    flymake
    nerd-icons
    projectile
  ];

  meta = {
    description = "Custom Emacs mode-line with project-aware segments and nerd-icons";
    homepage = "https://github.com/thattemperature/thattem-mode-line";
    license = lib.licenses.gpl3;
    maintainers = with lib.maintainers; [
      thattemperature
    ];
  };

}
