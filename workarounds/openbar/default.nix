# Workaround: GNOME 50 compatibility for openbar@neuromorph

self: super:

{
  gnomeExtensions = super.gnomeExtensions // {
    "open-bar" = super.gnomeExtensions."open-bar".overrideAttrs (old: {
      patches = super.lib.unique ((old.patches or [ ]) ++ [ ./gnome-50.patch ]);
    });
  };
}
