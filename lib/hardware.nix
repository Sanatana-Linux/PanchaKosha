{lib}: {
  # Unified Nvidia Environment for Wayland stability
  nvidiaWaylandEnvs = {
    LIBVA_DRIVER_NAME = "nvidia";
    __GLX_VENDOR_LIBRARY_NAME = "nvidia";
    GBM_BACKEND = "nvidia-drm";
    # Fix for invisible cursors on many Nvidia/wlroots setups
    WLR_NO_HARDWARE_CURSORS = "1";
    # Force Electron/Chrome apps to use Wayland natively
    NIXOS_OZONE_WL = "1";
    # Essential for Qt6/Quickshell on Nvidia
    QT_QPA_PLATFORM = "wayland-egl";
  };

  # Safe autostart wrapper to prevent compositor hangs
  mkFailSafeWrapper = {
    pkgs,
    name,
    command,
  }:
    pkgs.writeShellScriptBin "${name}-safe" ''
      echo "PanchaKosha: Attempting to start ${name}..."
      if ${command}; then
        echo "PanchaKosha: ${name} started successfully."
      else
        echo "PanchaKosha: ${name} failed to start. Compositor will remain active." >&2
      fi
    '';
}
