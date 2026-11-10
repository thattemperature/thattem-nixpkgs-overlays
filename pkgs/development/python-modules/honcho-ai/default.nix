{
  # Basic
  lib,
  buildPythonPackage,
  fetchPypi,
  # Build system
  setuptools,
  wheel,
  # Dependencies
  httpx,
  pydantic,
}:

buildPythonPackage rec {
  pname = "honcho-ai";
  version = "2.9.0";
  pyproject = true;

  __structuredAttrs = true;

  src = fetchPypi {
    pname = "honcho_ai";
    inherit version;
    hash = "sha256-TyEa0O8VojwjEnX+oj+Y026aEsd5/Fo6+EeuPZlfZ6c=";
  };

  build-system = [
    setuptools
    wheel
  ];

  dependencies = [
    httpx
    pydantic
  ];

  pythonImportsCheck = [ "honcho" ];

  meta = with lib; {
    description = "Official Python SDK for Honcho, the AI-native conversational memory platform";
    homepage = "https://github.com/plastic-labs/honcho";
    changelog = "https://github.com/plastic-labs/honcho/blob/main/sdks/python/CHANGELOG.md";
    license = licenses.asl20;
  };
}
