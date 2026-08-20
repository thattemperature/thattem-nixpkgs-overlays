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
  version = "0-unstable-2026-08-20";

  src = fetchFromGitHub {
    owner = "thattemperature";
    repo = "thattem-modus-themes";
    rev = "16ae8050d72f268b5025cdd31afa040f5dc15aba";
    hash = "sha256-sZXSOG0/EcJcTakOwn+fbiH48V5/dXLplzzKgshAgZY=";
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
