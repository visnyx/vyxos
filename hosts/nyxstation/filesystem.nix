{ ... }:

{
  # btrfs mount options
  fileSystems."/".options = [
    "compress=zstd"
    "noatime"
  ];
  fileSystems."/home".options = [
    "subvol=home"
    "compress=zstd"
    "noatime"
  ];
  fileSystems."/nix".options = [
    "subvol=nix"
    "compress=zstd"
    "noatime"
  ];
}
