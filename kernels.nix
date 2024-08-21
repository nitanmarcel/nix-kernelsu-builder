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
    kernelSrc = sources.android-kernel-nothing-mt6878.src;
    enableKernelSU = false;
    kernelMakeFlags = [
      "KCFLAGS=\"-Wno-error -Wno-unused-variable\""
      "KCPPFLAGS=\"-Wno-error -Wno-unused-variable\""
        ];
  };

}
