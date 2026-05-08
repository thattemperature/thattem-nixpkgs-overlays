{
  # Basic
  melpaBuild,
  fetchFromGitHub,
  # Emacs Dependencies
  agenix,
  colorful-mode,
  company-posframe,
  company-prescient,
  compile-multi-nerd-icons,
  consult-company,
  consult-compile-multi,
  consult-eglot,
  consult-flyspell,
  consult-org-roam,
  consult-yasnippet,
  envrc,
  fennel-mode,
  fish-completion,
  forge,
  gptel-agent,
  haskell-ts-mode,
  kotlin-ts-mode,
  marginalia,
  nerd-icons-dired,
  nix-ts-mode,
  nixfmt,
  package-lint,
  rainbow-delimiters,
  rime,
  sdcv,
  thattem-mode-line,
  thattem-modus-themes,
  thattem-tab-bar,
  thattem-window-actions,
  tramp,
  treesit-auto,
  undo-tree,
  verilog-ts-mode,
  vertico-prescient,
  vhdl-ts-mode,
  yasnippet-snippets,
  # Other Dependencies
  treesit-grammars,
  # Special
  special-auth-source ? "",
}:

melpaBuild {

  pname = "thattem-emacs-init";
  version = "0-unstable-2026-05-08";

  src = fetchFromGitHub {
    owner = "thattemperature";
    repo = "thattem-emacs-init";
    rev = "dcb3c21acc3e1abd3fa1c0fccab32578851c9f15";
    hash = "sha256-voXYMWpe7uo/F+odSNEI1ippi3le+e3umUQAJEPjflE=";
  };

  packageRequires = [
    agenix
    colorful-mode
    company-posframe
    company-prescient
    compile-multi-nerd-icons
    consult-company
    consult-compile-multi
    consult-eglot
    consult-flyspell
    consult-org-roam
    consult-yasnippet
    envrc
    fennel-mode
    fish-completion
    forge
    gptel-agent
    haskell-ts-mode
    kotlin-ts-mode
    marginalia
    nerd-icons-dired
    nix-ts-mode
    nixfmt
    package-lint
    rainbow-delimiters
    rime
    sdcv
    thattem-mode-line
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
    yasnippet-snippets
  ];

  postPatch = ''
    substituteInPlace thattem-emacs-init.el \
      --replace-fail ";;PLACEHOLDER:AUTH-SOURCE;;" \
                     "\"${special-auth-source}\""
  '';

}
