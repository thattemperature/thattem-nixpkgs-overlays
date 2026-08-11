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
  version = "0-unstable-2026-08-14";

  src = fetchFromGitHub {
    owner = "thattemperature";
    repo = "thattem-mode-line";
    rev = "3bd2c3a93bfdfb25c607df3931f44703b54a6ec2";
    hash = "sha256-WHKsmde26itabRlx1C/mRdOYUHFp8uLncBdhXmDqw2Y=";
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
