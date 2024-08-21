{ callPackage, sources, ... }:
let
  pipeline = callPackage ./pipeline { };
in
{
  android-kernel-nothing-mt6878 = pipeline {
    anyKernelVariant = "kernelsu";
    clangVersion = "latest";
    kernelDefconfigs = [
      "gki_defconfig"
    ];
    kernelImageName = "Image";
    oemBootImg = "images/tetris/stock_boot.img";
    kernelSrc = sources.android-kernel-nothing-mt6878.src;
    enableKernelSU = false;
  };

}
