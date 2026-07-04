{
  lib,
  stdenvNoCC,
  fetchFromGitHub,
}:

stdenvNoCC.mkDerivation {

  pname = "rime-thattem-pinyin";
  version = "0-unstable-2026-05-10";

  src = fetchFromGitHub {
    owner = "thattemperature";
    repo = "rime-thattem-pinyin";
    rev = "ef9f19baec90baa4f1a7eb4646505a24d05e3083";
    hash = "sha256-rpGE71IhCna0U4xe8RzBLKocPeyczIyODVjKHD4XtEk=";
  };

  installPhase = ''
    runHook preInstall

    install -D *.yaml -t $out/share/rime-data/
    install -D dicts/basic/*.yaml -t $out/share/rime-data/dicts/basic/
    install -D dicts/english/*.yaml -t $out/share/rime-data/dicts/english/
    install -D dicts/japanese/*.yaml -t $out/share/rime-data/dicts/japanese/

    runHook postInstall
  '';

  meta = {
    description = "Thattemperature's Rime Pinyin input schema and dictionaries";
    homepage = "https://github.com/thattemperature/rime-thattem-pinyin";
    license = lib.licenses.gpl3;
    maintainers = with lib.maintainers; [
      thattemperature
    ];
  };

}
