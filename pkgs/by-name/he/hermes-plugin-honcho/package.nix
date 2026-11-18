{
  lib,
  stdenvNoCC,
  fetchFromGitHub,
}:

stdenvNoCC.mkDerivation rec {

  pname = "hermes-plugin-honcho";
  version = "3.6.1";

  src = fetchFromGitHub {
    owner = "plastic-labs";
    repo = "honcho";
    rev = "v${version}";
    hash = "sha256-prbjOEN5jWUEzjPHxjs4ELtaMGU1BRk3h4dII1GQqf4=";
  };

  strictDeps = true;
  __structuredAttrs = true;

  sourceRoot = "source/hermes-plugin-honcho";

  # Compatibility with Hermes's session-rules/storage refactor; remove once fixed upstream.
  # https://github.com/plastic-labs/honcho/issues/1615
  patches = [ ./hermes-main-compat.patch ];

  installPhase = ''
    runHook preInstall

    mkdir -p $out
    cp -r . "$out"/

    runHook postInstall
  '';

  meta = with lib; {
    description = "Honcho AI-native memory provider plugin for Hermes Agent";
    homepage = "https://github.com/plastic-labs/honcho";
    license = licenses.mit;
  };

}
