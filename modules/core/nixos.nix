{
  config,
  lib,
  pkgs,
  ...
}:
with lib; let
  cfg = config.panchakosha;
  # Auto-detection for Nvidia drivers in the host config
  hasNvidia = builtins.elem "nvidia" config.services.xserver.videoDrivers;
in {
  options.panchakosha = {
    nvidiaFixes = mkOption {
      type = types.bool;
      default = hasNvidia;
      description = "Apply environment variables for Nvidia Wayland stability.";
    };
  };

  config = mkIf (cfg.mangowc.enable || cfg.quickshell.enable || cfg.greetd.enable) {
    environment.sessionVariables = mkIf cfg.nvidiaFixes {
      LIBVA_DRIVER_NAME = "nvidia";
      __GLX_VENDOR_LIBRARY_NAME = "nvidia";
      GBM_BACKEND = "nvidia-drm";
      WLR_NO_HARDWARE_CURSORS = "1";
      NIXOS_OZONE_WL = "1";
      QT_QPA_PLATFORM = "wayland-egl";
      __EGL_VENDOR_LIBRARY_FILENAMES = "/run/opengl-driver/share/glvnd/egl_vendor.d/10_nvidia.json";
    };

    # Essential dependencies for Wayland/Qt rendering
    environment.systemPackages = with pkgs; [
      wayland
      egl-wayland
      qt6.qtwayland
      vulkan-loader
      libva
    ];
  };
}
