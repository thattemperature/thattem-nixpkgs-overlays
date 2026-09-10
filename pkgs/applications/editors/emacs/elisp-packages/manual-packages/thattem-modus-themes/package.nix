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
  version = "0-unstable-2026-09-10";

  src = fetchFromGitHub {
    owner = "thattemperature";
    repo = "thattem-modus-themes";
    rev = "2d31717c4c95c5d0c3df6708a662735b240154c5";
    hash = "sha256-P7ws1EPb6CchYC5ffBLclxsgDA8LWk8z4PhbhKCp9TU=";
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
