{ lib }:
let
  boolToInt = b: if b then "1" else "0";
in
{
  inherit boolToInt;

  generateAppearanceConfig = appearance: ''
    gappih=${toString appearance.gappih}
    gappiv=${toString appearance.gappiv}
    gappoh=${toString appearance.gappoh}
    gappov=${toString appearance.gappov}
    scratchpad_width_ratio=${toString appearance.scratchpadWidthRatio}
    scratchpad_height_ratio=${toString appearance.scratchpadHeightRatio}
    borderpx=${toString appearance.borderpx}
    rootcolor=0x${appearance.rootcolor}
    bordercolor=0x${appearance.bordercolor}
    focuscolor=0x${appearance.focuscolor}
    urgentcolor=0x${appearance.urgentcolor}
    maximizescreencolor=0x${appearance.maximizescreencolor}
    scratchpadcolor=0x${appearance.scratchpadcolor}
    globalcolor=0x${appearance.globalcolor}
    overlaycolor=0x${appearance.overlaycolor}
    cursor_size=${toString appearance.cursorSize}
    cursor_theme=${appearance.cursorTheme}
  '';

  generateEffectsConfig = effects: ''
    blur=${boolToInt effects.blur}
    blur_layer=${boolToInt effects.blurLayer}
    blur_optimized=${boolToInt effects.blurOptimized}
    blur_params_num_passes=${toString effects.blurPasses}
    blur_params_radius=${toString effects.blurRadius}
    shadows=${boolToInt effects.shadows}
    layer_shadows=${boolToInt effects.layerShadows}
    shadow_only_floating=${boolToInt effects.shadowOnlyFloating}
    shadows_size=${toString effects.shadowsSize}
    shadows_blur=${toString effects.shadowsBlur}
    shadowscolor=0x${effects.shadowsColor}
    border_radius=${toString effects.borderRadius}
    no_radius_when_single=${boolToInt effects.noRadiusWhenSingle}
    focused_opacity=${toString effects.focusedOpacity}
    unfocused_opacity=${toString effects.unfocusedOpacity}
  '';

  generateAnimationsConfig = animations: ''
    animations=${boolToInt animations.enable}
    layer_animations=${boolToInt animations.layerAnimations}
    animation_type_open=${animations.openType}
    animation_type_close=${animations.closeType}
    animation_duration_move=${toString animations.durationMove}
    animation_duration_open=${toString animations.durationOpen}
    animation_duration_tag=${toString animations.durationTag}
    animation_duration_close=${toString animations.durationClose}
    animation_duration_focus=${toString animations.durationFocus}
    animation_curve_open=${animations.curveOpen}
    animation_curve_move=${animations.curveMove}
    animation_curve_tag=${animations.curveTag}
    animation_curve_close=${animations.curveClose}
    animation_curve_focus=${animations.curveFocus}
    animation_curve_opafadeout=${animations.curveOpafadeout}
    animation_curve_opafadein=${animations.curveOpafadein}
  '';

  generateLayoutsConfig = layout: ''
    # Scroller
    scroller_structs=${toString layout.scroller.structs}
    scroller_default_proportion=${toString layout.scroller.defaultProportion}
    scroller_focus_center=${boolToInt layout.scroller.focusCenter}
    scroller_prefer_center=${boolToInt layout.scroller.preferCenter}
    edge_scroller_pointer_focus=${boolToInt layout.scroller.edgeScrollerPointerFocus}
    scroller_default_proportion_single=${toString layout.scroller.defaultProportionSingle}
    scroller_proportion_preset=${lib.concatStringsSep "," (map toString layout.scroller.proportionPreset)}

    # Master-Stack
    new_is_master=${boolToInt layout.masterStack.newIsMaster}
    default_mfact=${toString layout.masterStack.defaultMfact}
    default_nmaster=${toString layout.masterStack.defaultNmaster}
    smartgaps=${boolToInt layout.masterStack.smartgaps}
  '';

  generateInputConfig = input: ''
    repeat_rate=${toString input.repeatRate}
    repeat_delay=${toString input.repeatDelay}
    numlockon=${boolToInt input.numlockon}
    xkb_rules_layout=${input.xkbRulesLayout}
    ${lib.optionalString (input.xkbRulesOptions != null) "xkb_rules_options=${input.xkbRulesOptions}"}
    mouse_natural_scrolling=${boolToInt input.mouseNaturalScrolling}
  '';

  generateMiscConfig = misc: ''
    no_border_when_single=${boolToInt misc.noBorderWhenSingle}
    axis_bind_apply_timeout=${toString misc.axisBindApplyTimeout}
    focus_on_activate=${boolToInt misc.focusOnActivate}
    inhibit_regardless_of_visibility=${boolToInt misc.inhibitRegardlessOfVisibility}
    sloppyfocus=${boolToInt misc.sloppyFocus}
    warpcursor=${boolToInt misc.warpCursor}
    focus_cross_monitor=${boolToInt misc.focusCrossMonitor}
    focus_cross_tag=${boolToInt misc.focusCrossTag}
    enable_floating_snap=${boolToInt misc.enableFloatingSnap}
    snap_distance=${toString misc.snapDistance}
    cursor_size=${toString misc.cursorSize}
    drag_tile_to_tile=${boolToInt misc.dragTileToTile}
  '';

  formatBinds = prefix: list: keyAttr: 
    lib.concatStringsSep "\n" (map (b:
      "${prefix}=${lib.concatStringsSep "+" b.mods},${toString b.${keyAttr}},${b.command}${lib.optionalString (b.params != null) ",${b.params}"}"
    ) list);

  formatRules = prefix: list:
    lib.concatStringsSep "\n" (map (rule:
      "${prefix}=${lib.concatStringsSep "," (lib.mapAttrsToList (n: v: "${n}:${toString v}") rule)}"
    ) list);

  formatMonitors = monitors:
    lib.concatStringsSep "\n" (map (m:
      "monitorrule=${m.name},${toString m.scale},${toString m.position.x},${toString m.position.y},${toString m.width},${toString m.height},${toString m.refreshRate},${toString (m.transform or 0)}"
    ) monitors);
}
