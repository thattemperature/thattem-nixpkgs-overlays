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
  version = "0-unstable-2026-04-12";

  src = fetchFromGitHub {
    owner = "thattemperature";
    repo = "thattem-emacs-init";
    rev = "09507207ce7c6f66f335bc6254dc7f295b74690f";
    hash = "sha256-3BrnXA7tTNzuoe51/eFSeBaS0oD4Np5XUwtCiLrYS9Y=";
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
