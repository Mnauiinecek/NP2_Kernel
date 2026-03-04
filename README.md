# NP2 Kernel

Custom kernel for **Nothing Phone 2 (Pong)** with root and hiding built in.

Based on [LineageOS kernel](https://github.com/LineageOS/android_kernel_nothing_sm8475.git) (android13-5.10, sublevel 246). Works with EvoX, LineageOS, and any ROM using this kernel base, others ROMs may work but aren't officially supported by me.

## Features

- **[WildKSU](https://github.com/WildKernels/Wild_KSU)**: Kernel-level root (KernelSU fork)
- **[SUSFS](https://gitlab.com/simonpunk/susfs4ksu)**: Hide root from banking apps, games, and safety checks
- **Thin LTO** - Link-time optimization for performance
- **GKI compatible** - Proper vendor module support

## Install

1. Download the AnyKernel3 zip from [Releases](https://github.com/MiguVT/NP2_Kernel/releases)
2. Boot into recovery (TWRP / OrangeFox)
3. Flash the zip → reboot
4. Install [WildKSU Manager](https://github.com/WildKernels/Wild_KSU/releases) to manage root

> **Backup your stock boot image first.** Bootloader must be unlocked. Use at your own risk.

## Build it yourself

1. Fork this repo
2. Go to **Actions** → **Build NP2 Kernel** → **Run workflow**
3. Download the zip from the completed run

Two variants are built automatically:
- **WKSU-SUSFS** - WildKSU + SUSFS (recommended)
- **WKSU** - WildKSU only

<details>
<summary>Workflow inputs</summary>

| Input | Default | Description |
|-------|---------|-------------|
| `kernel_repo` | `LineageOS/android_kernel_nothing_sm8475` | Kernel source repo URL |
| `kernel_branch` | `lineage-23.2` | Branch to build |
| `kernel_defconfig` | `gki_defconfig` | Defconfig (relative to `arch/arm64/configs/`) |
| `extra_configs` | `vendor/waipio_GKI.config vendor/nothing/waipio_GKI.config vendor/debugfs.config` | Config fragments to merge |

</details>

## Credits

- [WildKernels](https://github.com/WildKernels/Wild_KSU) - WildKSU
- [simonpunk](https://gitlab.com/simonpunk/susfs4ksu) - SUSFS
- [osm0sis](https://github.com/osm0sis/AnyKernel3) - AnyKernel3
- [LineageOS](https://github.com/LineageOS) - Kernel source
