this is my nixos config for my laptop
kinda ~messy~ tho

# the tree

```
├── flake.lock
├── flake.nix
├── home
│   ├── cli.nix
│   ├── default.nix
│   ├── editors.nix
│   ├── git.nix
│   └── shell.nix
├── hosts
│   └── nyxstation
│       ├── default.nix
│       ├── filesystem.nix
│       ├── hardware-configuration.nix
│       └── nvidia.nix
└── modules
    ├── core
    │   ├── boot.nix
    │   ├── default.nix
    │   ├── kernel.nix
    │   ├── locale.nix
    │   ├── nix.nix
    │   └── users.nix
    ├── desktop
    │   ├── default.nix
    │   ├── fonts.nix
    │   ├── gnome.nix
    │   └── plasma.nix
    ├── gaming.nix
    ├── hardware
    │   ├── audio.nix
    │   ├── default.nix
    │   ├── networking.nix
    │   └── performance.nix
    ├── packages.nix
    └── services
        ├── containers.nix
        ├── default.nix
        ├── misc.nix
        └── tailscale.nix
```

- 9 directories, 31 files

idk
