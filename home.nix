{ config, pkgs, ... }:

{

  imports = [
    ./fish.nix
    ./git.nix
  ];

  nixpkgs.config.allowUnfree = true;

  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "olivia";
  home.homeDirectory = "/Users/olivia";

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "22.05";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
  
  home.packages = with pkgs; [
    binutils
    coreutils
    curl
    diffutils
    docutils
    cosign
    ffmpeg
    findutils
    fish
    fishPlugins.foreign-env
    git
    gnutar
    go
    jq
    neovim
    pigz
    podman
    pre-commit
    python3
    qemu
    ripgrep
    rustup
    shellcheck
    tree
    wget
    which
  ];
}
