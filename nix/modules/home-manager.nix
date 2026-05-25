# nix/modules/home-manager.nix — auto-generated from bevy_color.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.bevy_color; in {
  options.programs.bevy_color = {
    enable = lib.mkEnableOption "bevy_color";
    package = lib.mkOption { type = lib.types.package; default = pkgs.bevy_color or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
