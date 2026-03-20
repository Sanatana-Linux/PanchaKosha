{lib, ...}: {
  options.programs.skeuomorphic.mangowc.env = lib.mkOption {
    type = with lib.types; listOf str;
    default = [ "XCURSOR_SIZE,24" ];
    example = [ "XCURSOR_SIZE,24" "XCURSOR_THEME,Bibata-Modern-Ice" ];
    description = "Environment variables in format 'NAME,VALUE'";
  };
}
