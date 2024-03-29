# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix
{ lib, ... }:

with lib.hm.gvariant;

{
  dconf.settings = {
    "org/extensions/caffeine" = {
      enable-fullscreen = false;
      show-indicator = "always";
      show-notifications = false;
    };

    "org/gnome/TextEditor" = {
      restore-session = false;
      show-line-numbers = true;
      show-right-margin = true;
    };

    "org/gnome/desktop/calendar" = {
      show-weekdate = true;
    };

    "org/gnome/desktop/interface" = {
      clock-format = "12h";
      clock-show-weekday = true;
      color-scheme = "prefer-dark";
      font-antialiasing = "grayscale";
      font-hinting = "slight";
    };

    "org/gnome/shell" = {
      disable-user-extensions = false;
      enabled-extensions = [ "appindicatorsupport@rgcjonas.gmail.com" "BingWallpaper@ineffable-gmail.com" "caffeine@patapon.info" "clipboard-indicator@tudmotu.com" "dash-to-dock@micxgx.gmail.com" "Vitals@CoreCoding.com" ];
    };

    "org/gnome/desktop/peripherals/touchpad" = {
      two-finger-scrolling-enabled = true;
    };

    "org/gnome/desktop/privacy" = {
      disable-camera = false;
      old-files-age = mkUint32 30;
      recent-files-max-age = 30;
      remember-recent-files = true;
      remove-old-temp-files = true;
      remove-old-trash-files = true;
    };

    "org/gnome/mutter" = {
      attach-modal-dialogs = false;
      edge-tiling = true;
      dynamic-workspaces = true;
    };

    "org/gnome/shell/extensions/appindicator" = {
      legacy-tray-enabled = true;
    };

    "org/gnome/shell/extensions/bingwallpaper" = {
      delete-previous = true;
      download-folder = "~/Pictures/BingWallpaper/";
      hide = true;
      icon-name = "bing-symbolic";
      notify = false;
    };

    "org/gnome/shell/extensions/caffeine" = {
      enable-fullscreen = false;
      indicator-position-max = 3;
      show-indicator = "always";
      show-notifications = false;
    };

    "org/gnome/shell/extensions/vitals" = {
      hot-sensors = [ "__temperature_avg__" "_memory_usage_" "_processor_usage_" "_system_uptime_" ];
      position-in-panel = 2;
    };

    "org/gnome/system/location" = {
      enabled = true;
    };

    "org/gnome/tweaks" = {
      show-extensions-notice = false;
    };

    "org/virt-manager/virt-manager/connections" = {
      autoconnect = ["qemu:///system"];
      uris = ["qemu:///system"];
    };
  };
}
