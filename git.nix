{
    programs.git = {
        enable = true;
        userName = "Olivia Crain";
        userEmail = "olivia@olivia.dev";
        aliases = {
            s = "status";
        };
        extraConfig = {
            core = {
                editor = "vim";
            };
            init.mainBranch = "true";
            commit.gpgsign = "true";
            tag.gpgsign = "true";
            gpg.format = "ssh";
            gpg.ssh.allowedSignersFile = "~/.ssh/allowed_signers";
            user.signingKey = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINWoZKQAy3KxtJH/ZEOAqhzPnq24A+Zuskv4aNKI3lR7 olivia@olivia.dev";

        };
    };

    home.file.".ssh/allowed_signers".text = ''
    olivia@olivia.dev ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINWoZKQAy3KxtJH/ZEOAqhzPnq24A+Zuskv4aNKI3lR7
    '';
}