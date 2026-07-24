# Workaround: upgrade mihomo for clash-verge-rev

self: super:

{

  mihomo_1_19_29 = super.mihomo.overrideAttrs (old: rec {

    version = "1.19.29";

    src = self.fetchFromGitHub {
      owner = "MetaCubeX";
      repo = "mihomo";
      rev = "v${version}";
      hash = "sha256-4qwWdMLJHHhuKqMc+4Ag576/73yPNupgbIcnBKbz/cc=";
    };

    vendorHash = "sha256-4AVCfBDRdBr/shmz0ZGvDeam+IIo50Mjcukd6tNPJ/g=";

    ldflags = [
      "-s"
      "-w"
      "-X github.com/metacubex/mihomo/constant.Version=${version}"
    ];
  });

  clash-verge-rev = super.clash-verge-rev.override {

    mihomo = self.mihomo_1_19_29;
  };

}
