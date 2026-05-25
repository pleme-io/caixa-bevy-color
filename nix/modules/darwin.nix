# nix/modules/darwin.nix — auto-generated from bevy_color.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.services.bevy_color; in {
  options.services.bevy_color = {
    enable = lib.mkEnableOption "bevy_color";
    package = lib.mkOption { type = lib.types.package; default = pkgs.bevy_color or null; };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
