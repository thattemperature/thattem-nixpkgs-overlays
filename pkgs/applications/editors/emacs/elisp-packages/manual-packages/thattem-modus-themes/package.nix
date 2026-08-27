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
  version = "0-unstable-2026-09-24";

  src = fetchFromGitHub {
    owner = "thattemperature";
    repo = "thattem-modus-themes";
    rev = "00c4eb5f7693d59cfa22f7a34b37d972e130411a";
    hash = "sha256-884Qs11wjhrd9b2182BvEsHlyb738hFReqS5Fni/b/0=";
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
