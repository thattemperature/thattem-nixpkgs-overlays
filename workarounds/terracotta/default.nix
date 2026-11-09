# Workaround: build failure

final: prev:

{

  terracotta = prev.terracotta.overrideAttrs (old: {

    nativeBuildInputs = prev.lib.unique (
      (old.nativeBuildInputs or [ ])
      ++ [
        final.pkg-config
      ]
    );

    buildInputs = prev.lib.unique (
      (old.buildInputs or [ ])
      ++ [
        final.zstd
      ]
    );
  });

}
