{
  lib,
  stdenvNoCC,
  fetchFromGitHub,
}:

stdenvNoCC.mkDerivation {

  pname = "rime-thattem-pinyin";
  version = "0-unstable-2026-11-12";

  src = fetchFromGitHub {
    owner = "thattemperature";
    repo = "rime-thattem-pinyin";
    rev = "968a7617568d0fea2b28fc252b11397975125f11";
    hash = "sha256-kVTzPP2oJjTmnM0E3aOWwQvmCwFNU8IhHFvEviUGQzo=";
  };

  strictDeps = true;
  __structuredAttrs = true;

  installPhase = ''
    runHook preInstall

    install -D *.yaml -t $out/share/rime-data/
    install -D dicts/basic/*.yaml -t $out/share/rime-data/dicts/basic/
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
