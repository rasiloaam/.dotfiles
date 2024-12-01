{
  config,
  lib,
  pkgs,
  modulesPath,
  ...
}: {
  imports = [
    (modulesPath + "/installer/scan/not-detected.nix")
  ];

  # Configure Boot
  boot = {
    kernelModules = ["kvm-intel"];
    extraModulePackages = [];
    initrd = {
      kernelModules = [];
      availableKernelModules = ["xhci_pci" "ahci" "nvme" "usbhid" "usb_storage" "sd_mod" "rtsx_pci_sdmmc"];
    };
  };

  # Configure Filesystems
  fileSystems = {
    # Root
    "/" = {
      device = "/dev/disk/by-label/NIXOS-ROOT";
      fsType = "ext4";
    };

    # Boot
    "/boot" = {
      device = "/dev/disk/by-label/NIXOS-BOOT";
      fsType = "vfat";
      options = ["fmask=0077" "dmask=0077"];
    };

    # Home
    "/home" = {
      device = "/dev/disk/by-label/NIXOS-HOME";
      fsType = "ext4";
    };
  };

  # Enables DHCP on each ethernet and wireless interface. In case of scripted networking
  # (the default) this is the recommended approach. When using systemd-networkd it's
  # still possible to use this option, but it's recommended to use it in conjunction
  # with explicit per-interface declarations with `networking.interfaces.<interface>.useDHCP`.
  networking.useDHCP = lib.mkDefault true;

  # Configure host platform
  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";

  # Update microcode
  hardware.cpu.intel.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
}
