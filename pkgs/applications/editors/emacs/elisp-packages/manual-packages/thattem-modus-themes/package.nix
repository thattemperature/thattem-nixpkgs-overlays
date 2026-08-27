{
  # Basic
  lib,
  melpaBuild,
  fetchFromGitHub,
  # Dependencies
  modus-themes,
}:

melpaBuild {

  pname = "thattem-modus-themes";
  version = "0-unstable-2026-08-27";

  src = fetchFromGitHub {
    owner = "thattemperature";
    repo = "thattem-modus-themes";
    rev = "472ce8cc64e46f6fef6c3a74a7122ec24df96b24";
    hash = "sha256-3YYOJX/OLhlkJu0DpdQ2E6QuRih4kWPVkwQ+P3nx+gk=";
  };

  packageRequires = [
    modus-themes
  ];

  meta = {
    description = "Custom modus-themes variants with thattemperature's preferred palette";
    homepage = "https://github.com/thattemperature/thattem-modus-themes";
    license = lib.licenses.gpl3;
    maintainers = with lib.maintainers; [
      thattemperature
    ];
  };

}
