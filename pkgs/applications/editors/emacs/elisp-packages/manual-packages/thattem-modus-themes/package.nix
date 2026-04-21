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
  version = "0-unstable-2026-03-26";

  src = fetchFromGitHub {
    owner = "thattemperature";
    repo = "thattem-modus-themes";
    rev = "c8ea168133a89fe3f573e36a68471aa0660aa69f";
    hash = "sha256-x0FOu+ILlAodj8JaGpJTtqxQrR4ji4gDROVzEbp41PE=";
  };

  packageRequires = [
    dash
    modus-themes
  ];

}
