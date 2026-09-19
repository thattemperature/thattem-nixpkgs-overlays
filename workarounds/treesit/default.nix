# Workaround: fix hash in tree-sitter-cuda

self: super:

{

  tree-sitter-grammars = super.tree-sitter-grammars.overrideScope (
    gself: gsuper: {

      tree-sitter-cuda = gsuper.tree-sitter-cuda.override {
        src = self.fetchFromGitHub {
          owner = "tree-sitter-grammars";
          repo = "tree-sitter-cuda";
          rev = "v0.21.2";
          hash = "sha256-s2qrZx5fEu/I6xE2paX/Nlmgvo6T27qqvy1cI8iznAA=";
        };
      };

    }
  );

}
