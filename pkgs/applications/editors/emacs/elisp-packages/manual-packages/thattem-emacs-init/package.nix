{
  # Basic
  lib,
  melpaBuild,
  fetchFromGitHub,
  # Emacs Dependencies
  agenix,
  cape,
  colorful-mode,
  compile-multi-nerd-icons,
  consult-compile-multi,
  consult-org-roam,
  corfu-prescient,
  eglot-tempel,
  envrc,
  fennel-mode,
  fish-completion,
  forge,
  gptel-agent,
  haskell-ts-mode,
  kotlin-ts-mode,
  marginalia,
  nerd-icons-corfu,
  nerd-icons-dired,
  nix-ts-mode,
  nixfmt,
  package-lint,
  rainbow-delimiters,
  rime,
  sdcv,
  tempel-collection,
  thattem-modus-themes,
  thattem-tab-bar,
  thattem-window-actions,
  tramp,
  undo-tree,
  vertico-prescient,
  # Other Dependencies
  treesit-grammars,
  # Special
  special-auth-source ? "",
}:

melpaBuild {

  pname = "thattem-emacs-init";
  version = "0-unstable-2026-08-25";

  src = fetchFromGitHub {
    owner = "thattemperature";
    repo = "thattem-emacs-init";
    rev = "fef83e1786c7b8ee80915f61e2ceb264832d8f5a";
    hash = "sha256-6vh8dayKvi73eW+3s89QNJvIuqAMmdnLbIOYgTlkwDA=";
  };

  packageRequires = [
    agenix
    cape
    colorful-mode
    compile-multi-nerd-icons
    consult-compile-multi
    consult-org-roam
    corfu-prescient
    eglot-tempel
    envrc
    fennel-mode
    fish-completion
    forge
    gptel-agent
    haskell-ts-mode
    kotlin-ts-mode
    marginalia
    nerd-icons-corfu
    nerd-icons-dired
    nix-ts-mode
    nixfmt
    package-lint
    rainbow-delimiters
    rime
    sdcv
    tempel-collection
    thattem-modus-themes
    thattem-tab-bar
    thattem-window-actions
    tramp
    treesit-grammars.with-all-grammars
    undo-tree
    vertico-prescient
  ];

  postPatch = ''
    substituteInPlace thattem-emacs-init.el \
      --replace-fail ";;PLACEHOLDER:AUTH-SOURCE;;" \
                     "\"${special-auth-source}\""
  '';

  meta = {
    description = "Thattemperature's personal Emacs initialization configuration";
    homepage = "https://github.com/thattemperature/thattem-emacs-init";
    license = lib.licenses.gpl3;
    maintainers = with lib.maintainers; [
      thattemperature
    ];
  };

}
