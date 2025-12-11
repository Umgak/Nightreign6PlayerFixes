// ==EMEVD==
// @docs    nr-common.emedf.json
// @compress    DCX_KRAK
// @game    Sekiro
// @string    "W:\\CL\\data\\Param\\event\\common_func.emevd\u0000W:\\CL\\data\\Param\\event\\common_macro.emevd\u0000\u0000\u0000\u0000\u0000\u0000"
// @linked    [0,82]
// @version    3.6.2
// ==/EMEVD==

$Event(0, Default, function() {
    RegisterBonfire(1046401950, 0, 5);
    $InitializeCommonEvent(0, 90015004, 1046401950, 1046400950);
    RegisterBonfire(1046401951, 0, 5);
    $InitializeCommonEvent(0, 90015004, 1046401951, 1046400951);
    RegisterBonfire(1046401952, 0, 5);
    $InitializeCommonEvent(0, 90015004, 1046401952, 1046400952);
    $InitializeCommonEvent(0, 90015150, 1046400300, 75065);
    $InitializeCommonEvent(0, 90015151, 1046400300, 76025);
    $InitializeCommonEvent(0, 90015152, 1046400300, 76025);
    $InitializeCommonEvent(0, 90015150, 1046400301, 75066);
    $InitializeCommonEvent(0, 90015151, 1046400301, 76026);
    $InitializeCommonEvent(0, 90015152, 1046400301, 76026);
    $InitializeCommonEvent(0, 90015440, 1046401200, 1037400256, 1037400316, 1037400286);
    $InitializeCommonEvent(0, 90015440, 1046401201, 1037400257, 1037400317, 1037400287);
    $InitializeCommonEvent(0, 90015440, 1046401202, 1037400278, 1037400338, 1037400308);
    $InitializeEvent(0, 1046402200, 1046406500, 1046400250, 1046402991);
    $InitializeCommonEvent(0, 90015140, 1046401300, 200, 9100, 1046408300);
    $InitializeCommonEvent(1, 90015140, 1046401301, 200, 9101, 1046408301);
    $InitializeCommonEvent(0, 90035075, 1046400230, 1046401250);
    $InitializeCommonEvent(0, 90035076, 1046400230, 1046401251);
    $InitializeCommonEvent(0, 90035077, 1046400230, 1046402800, 1046402801, 1046402802, 1046402803);
    $InitializeCommonEvent(0, 90035077, 1046400230, 1046402804, 1046402805, 1046402806, 1046402807);
    $InitializeCommonEvent(0, 90035077, 1046400230, 1046402808, 1046402809, 0, 0);
    $InitializeCommonEvent(0, 90035078, 1046400230, 1046406900);
    $InitializeCommonEvent(0, 90035079, 1046400230, 1046402700, 1046401250);
    $InitializeCommonEvent(0, 90035070, 0, 0, 1046405200, 1046400230);
    $InitializeCommonEvent(0, 90035085, 1046400230, 1046402710, 33);
    $InitializeCommonEvent(0, 90035080, 1046400230, 1046405900, 1046402890);
    $InitializeCommonEvent(0, 90035081, 1046400230);
    $InitializeCommonEvent(0, 90035082, 1046400230, 1046400208, 1046400205, 1046400206);
    $InitializeCommonEvent(0, 90035083, 1046400230, 1);
    $InitializeCommonEvent(0, 90035083, 1046400230, 2);
    $InitializeCommonEvent(0, 90035083, 1046400230, 3);
    $InitializeCommonEvent(0, 90035084, 1046400230, 1046401250, 1046400208, 1);
    $InitializeCommonEvent(0, 90035084, 1046400230, 1046401250, 1046400205, 2);
    $InitializeCommonEvent(0, 90035084, 1046400230, 1046401250, 1046400206, 3);
    $InitializeCommonEvent(0, 90035087, 1046400230, 1046401250);
    $InitializeCommonEvent(0, 90035088, 1046400230, 1046400204);
    $InitializeCommonEvent(0, 90035088, 1046400230, 1046400207);
});

$Event(1046402200, Restart, function(assetEntityId, chrEntityId, attachPointEntityId) {
    DisableCharacter(chrEntityId);
    ChangeAssetEnableStateUnknown200510(assetEntityId, Disabled, 1);
    DisableAsset(assetEntityId);
    WaitFor(SmallBaseAttached(attachPointEntityId, 53990000));
    EnableCharacter(chrEntityId);
    ChangeAssetEnableStateUnknown200510(assetEntityId, Enabled, 1);
    EnableAsset(assetEntityId);
});


