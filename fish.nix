{ config, pkgs, ... }:

{
    home.file.".nixinit".text = 
    ''
        export NIX_PATH=$HOME/.nix-defexpr/channels:/nix/var/nix/profiles/per-user/root/channels''${NIX_PATH:+:NIX_PATH}
    '';
    programs.fish = {
        enable = true;

        plugins = [
            {
                name = "foreign-env";
                src = pkgs.fishPlugins.foreign-env.src;
            }
            {
                name = "pure";
                src = pkgs.fishPlugins.pure.src;
            }
        ];

        shellInit = 
        ''
            if test -e /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.fish
                source /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.fish
            end
            if test -e $HOME/.nixinit
                fenv source $HOME/.nixinit
            end
        '';

        interactiveShellInit = ''
            set fish_greeting ""
        '';
    };
}