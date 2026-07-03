baseDirectory:

self: super:

let

  extensionRenames = { };

  mapReadableNames =
    extensionsList:
    super.lib.trivial.pipe extensionsList [
      (super.lib.filter (
        extension:
        !(
          (builtins.hasAttr extension.extensionUuid extensionRenames)
          && ((builtins.getAttr extension.extensionUuid extensionRenames) == null)
        )
      ))
      (map (
        extension:
        super.lib.nameValuePair (extensionRenames.${extension.extensionUuid}
          or extension.extensionPortalSlug
        ) extension
      ))
      builtins.listToAttrs
    ];

in

{

  gnomeExtensions = super.lib.trivial.pipe { } [
    (extensions: extensions // (import baseDirectory { inherit (self) callPackage; }))
    (super.lib.attrValues)
    mapReadableNames
    (extensions: extensions // super.gnomeExtensions)
  ];

}
