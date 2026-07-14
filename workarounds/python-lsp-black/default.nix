# Workaround: fix python-lsp-black build failure

self: super:

{

  pythonPackagesExtensions = super.pythonPackagesExtensions ++ [
    (python-final: python-prev: {

      python-lsp-black = python-prev.python-lsp-black.overridePythonAttrs (old: {

        patches =
          let
            old-patches = old.patches or [ ];
            importlib-patches = super.lib.optional (super.lib.versionAtLeast python-final.python.version "3.14") ./importlib.patch;
            black_26_5-patches = super.lib.optional (super.lib.versionAtLeast python-final.black.version "26.5") ./black_26_5.patch;
          in
          super.lib.unique (old-patches ++ importlib-patches ++ black_26_5-patches);
      });

    })
  ];

}
