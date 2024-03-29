{ config, pkgs, ... }:

{
  home.username = "ryans";
  home.homeDirectory = "/home/ryans";

  imports = [ ./dconf.nix ];

  programs.bash = {
    enable = true;
    enableCompletion = true;
    shellAliases = {
      confedit="sudo nano /etc/nixos/terminator/configuration.nix";
      confsave="sudo nixos-rebuild switch --flake '/etc/nixos/terminator#terminator'";
      confupdate="sudo nix flake update /etc/nixos/terminator && sudo nixos-rebuild switch --flake '/etc/nixos/terminator#terminator'";
      confgarbage="sudo nix-collect-garbage -d";
      confgit="cd /etc/nixos && sudo git fetch origin && sudo git pull origin main && sudo git add . && sudo git commit -m 'Manual commit message' && sudo git push origin main";
    };
  };

  # This value determines the home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update home Manager without changing this value. See
  # the home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "24.05";
}

