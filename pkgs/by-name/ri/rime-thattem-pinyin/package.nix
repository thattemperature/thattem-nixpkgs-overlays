{
  stdenvNoCC,
  fetchFromGitHub,
}:

stdenvNoCC.mkDerivation {

  pname = "rime-thattem-pinyin";
  version = "0-unstable-2026-03-31";

  src = fetchFromGitHub {
    owner = "thattemperature";
    repo = "rime-thattem-pinyin";
    rev = "10b1a513ace906e6190a0905754607bfb6ccc8eb";
    hash = "sha256-hk32sHF9Wdw9Ti1fHltPmKzbXsVdrKMRmfKHZcrTZFE=";
  };

  installPhase = ''
    runHook preInstall

    install -D *.yaml -t $out/share/rime-data/
    install -D dicts/basic/*.yaml -t $out/share/rime-data/dicts/basic/
    install -D dicts/english/*.yaml -t $out/share/rime-data/dicts/english/
    install -D dicts/japanese/*.yaml -t $out/share/rime-data/dicts/japanese/

    runHook postInstall
  '';

}
