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
  treesit-auto,
  undo-tree,
  verilog-ts-mode,
  vertico-prescient,
  vhdl-ts-mode,
  # Other Dependencies
  treesit-grammars,
  # Special
  special-auth-source ? "",
}:

melpaBuild {

  pname = "thattem-emacs-init";
  version = "0-unstable-2026-07-03";

  src = fetchFromGitHub {
    owner = "thattemperature";
    repo = "thattem-emacs-init";
    rev = "7e0b2eef72267690d65d2b8323560d51da6d047a";
    hash = "sha256-PksF+ZKa9ZhHc66hH9s0nn9XgM8TnDNf+8aMSA3DGl4=";
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
    treesit-auto
    treesit-grammars.with-all-grammars
    undo-tree
    verilog-ts-mode
    vertico-prescient
    vhdl-ts-mode
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
