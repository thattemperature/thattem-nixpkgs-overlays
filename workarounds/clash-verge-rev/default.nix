# Workaround: build failure

final: prev:

{

  clash-verge-rev = prev.clash-verge-rev.override {

    callPackage =
      path: args:
      let
        package = final.callPackage path args;
      in
      if baseNameOf path == "unwrapped.nix" then
        package.overrideAttrs (old: {
          buildInputs = prev.lib.unique (
            (old.buildInputs or [ ])
            ++ [
              final.aws-lc
            ]
          );
        })
      else
        package;
  };

}
