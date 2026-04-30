baseDirectory:

self: super:

let

  namesForShard =
    shard: type:
    if type != "directory" then
      { }
    else
      super.lib.mapAttrs (name: _: baseDirectory + "/${shard}/${name}/package.nix") (
        builtins.readDir (baseDirectory + "/${shard}")
      );

  packageFiles = super.lib.mergeAttrsList (
    super.lib.mapAttrsToList namesForShard (builtins.readDir baseDirectory)
  );

in

super.lib.mapAttrs (
  name: file: if builtins.hasAttr name super then super."${name}" else self.callPackage file { }
) packageFiles
