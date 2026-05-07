{
  # Basic
  melpaBuild,
  fetchFromGitHub,
  # Dependencies
  dash,
  modus-themes,
}:

melpaBuild {

  pname = "thattem-modus-themes";
  version = "0-unstable-2026-05-07";

  src = fetchFromGitHub {
    owner = "thattemperature";
    repo = "thattem-modus-themes";
    rev = "11bb90949c8528168e5b808d22f3cd1221ad3511";
    hash = "sha256-KQSCL2/cf0r37mPFOleAcb67QCtOfklmChjjoqsQAhI=";
  };

  packageRequires = [
    dash
    modus-themes
  ];

}
