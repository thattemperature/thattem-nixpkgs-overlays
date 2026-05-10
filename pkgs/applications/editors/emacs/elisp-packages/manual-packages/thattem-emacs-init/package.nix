{
  # Basic
  melpaBuild,
  fetchFromGitHub,
  # Emacs Dependencies
  agenix,
  cape,
  colorful-mode,
  compile-multi-nerd-icons,
  consult-compile-multi,
  consult-org-roam,
  consult-yasnippet,
  corfu-prescient,
  eglot,
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
  version = "0-unstable-2026-05-10";

  src = fetchFromGitHub {
    owner = "thattemperature";
    repo = "thattem-emacs-init";
    rev = "9efc47e5194e4b53ebd7175cd0c32dd40677a2ae";
    hash = "sha256-Q2bRzka5AThvSo3T0oCTag6p+N/EM5CcjwmptSXT480=";
  };

  packageRequires = [
    agenix
    cape
    colorful-mode
    compile-multi-nerd-icons
    consult-compile-multi
    consult-org-roam
    consult-yasnippet
    corfu-prescient
    eglot
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
