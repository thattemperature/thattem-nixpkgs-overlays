{
  # Basic
  lib,
  melpaBuild,
  fetchFromGitHub,
  # Dependencies
  dash,
  modus-themes,
}:

melpaBuild {

  pname = "thattem-modus-themes";
  version = "0-unstable-2026-05-11";

  src = fetchFromGitHub {
    owner = "thattemperature";
    repo = "thattem-modus-themes";
    rev = "f25a4f9655e32bcf13427588cfda824e7dea5446";
    hash = "sha256-EiqYJW0VhwlFDm/UA7Yt2gegBJs5Po0gogA4Rot6wnA=";
  };

  packageRequires = [
    dash
    modus-themes
  ];

  meta = {
    description = "Custom modus-themes variants with thattemperature's preferred palette";
    homepage = "https://github.com/thattemperature/thattem-modus-themes";
    license = lib.licenses.gpl3;
    maintainers = with lib.maintainers; [ thattemperature ];
  };

}
