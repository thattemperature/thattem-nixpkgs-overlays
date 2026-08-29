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
  version = "0-unstable-2026-09-16";

  src = fetchFromGitHub {
    owner = "thattemperature";
    repo = "thattem-emacs-init";
    rev = "18b3ebae92b49b4eb530154901c7a88e69463fd0";
    hash = "sha256-3qD3LQZQKGdYspP1WTeWTvfesepcK3li61qUVpt2p2U=";
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
