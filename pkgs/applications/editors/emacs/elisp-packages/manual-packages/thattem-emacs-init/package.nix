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
  haskell-ts-mode,
  kotlin-ts-mode,
  marginalia,
  nerd-icons-corfu,
  nerd-icons-dired,
  nix-ts-mode,
  nixfmt,
  orderless,
  package-lint,
  rainbow-delimiters,
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
  version = "0-unstable-2026-08-29";

  src = fetchFromGitHub {
    owner = "thattemperature";
    repo = "thattem-emacs-init";
    rev = "451875e2b75a91b3f98860660920be743ee67b5b";
    hash = "sha256-AVauJPCbHU6aank4hOgJVpda7uXm4/kIhDA8HU+f3X4=";
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
    haskell-ts-mode
    kotlin-ts-mode
    marginalia
    nerd-icons-corfu
    nerd-icons-dired
    nix-ts-mode
    nixfmt
    orderless
    package-lint
    rainbow-delimiters
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
