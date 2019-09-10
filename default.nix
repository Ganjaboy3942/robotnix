{ configuration,
  pkgs ? import ./pkgs.nix,
  lib ? pkgs.stdenv.lib
}:

lib.evalModules {
  modules = [
    { _module.args.pkgs = pkgs; _module.args.lib = lib; }
    configuration 
    ./modules/apps/auditor.nix
    ./modules/apps/backup.nix
    ./modules/apps/fdroid.nix
    ./modules/apps/prebuilt.nix
    ./modules/apps/updater.nix
    ./modules/apps/webview.nix
    ./modules/base.nix
    ./modules/emulator.nix
    ./modules/etc.nix
    ./modules/hosts.nix
    ./modules/kernel.nix
    ./modules/microg.nix
    ./modules/release.nix
    ./modules/resources.nix
    ./modules/source.nix
    ./modules/vendor.nix
  ];
}
