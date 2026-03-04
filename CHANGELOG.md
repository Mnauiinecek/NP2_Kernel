# Changelog

## v3.0.0 - Complete Rewrite (March.1 2026)

Linux 5.10.246 · Android 13 GKI

### New

- Rewrote the build system from scratch (clean GitHub Actions workflow, proper GKI config fragments)
- WildKSU v3.0.0 with latest SuSFS and upstream KSU fixes
- SUSFS v2.0.0+ for root/module hiding (banking apps, SafetyNet, Play Integrity)
- Enabled Thin LTO for better performance
- Build now warns if critical configs are wrong

### Fixed

- Fixed config fragment ordering to match official LineageOS BoardConfig

### Variants

- **WKSU-SUSFS** - WildKSU + SUSFS hiding
- **WKSU** - WildKSU only, no hiding
