# Workaround: downgrade mihomo for clash-verge-rev

self: super:

{

  mihomo_1_19_26 = super.mihomo.overrideAttrs (old: rec {

    version = "1.19.26";

    src = self.fetchFromGitHub {
      owner = "MetaCubeX";
      repo = "mihomo";
      rev = "v${version}";
      hash = "sha256-As0MqIGHs1Gn+aUWpeFsC231n9v7lBNmGlQdAwVWcJs=";
    };

    vendorHash = "sha256-ySpBMR/djPPs1aTw7yiCrCFxDFsvRfTJEChg8v1C408=";
  });

  clash-verge-rev = super.clash-verge-rev.override {

    mihomo = self.mihomo_1_19_26;
  };

}
