// ==EMEVD==
// @docs    nr-common.emedf.json
// @compress    DCX_KRAK
// @game    Sekiro
// @string    "W:\\CL\\data\\Param\\event\\common_func.emevd\u0000W:\\CL\\data\\Param\\event\\common_macro.emevd\u0000\u0000\u0000\u0000\u0000\u0000"
// @linked    [0,82]
// @version    3.6.2
// ==/EMEVD==

$Event(0, Default, function() {
    RegisterBonfire(1057401950, 0, 5);
    $InitializeCommonEvent(0, 90015004, 1057401950, 1057400950);
    $InitializeCommonEvent(0, 90015150, 1057400300, 75072);
    $InitializeCommonEvent(0, 90015151, 1057400300, 76032);
    $InitializeCommonEvent(0, 90015152, 1057400300, 76032);
    $InitializeCommonEvent(0, 90015150, 1057400301, 75073);
    $InitializeCommonEvent(0, 90015151, 1057400301, 76033);
    $InitializeCommonEvent(0, 90015152, 1057400301, 76033);
    $InitializeCommonEvent(0, 90015150, 1057400302, 75074);
    $InitializeCommonEvent(0, 90015151, 1057400302, 76034);
    $InitializeCommonEvent(0, 90015152, 1057400302, 76034);
    $InitializeCommonEvent(0, 90015150, 1057400303, 75075);
    $InitializeCommonEvent(0, 90015151, 1057400303, 76035);
    $InitializeCommonEvent(0, 90015152, 1057400303, 76035);
    $InitializeCommonEvent(0, 91005503, 1057401250);
    $InitializeEvent(0, 1057402250, 1057402502);
    $InitializeEvent(0, 1057402251, 1057402500);
    $InitializeCommonEvent(0, 90015440, 1057401200, 1037400262, 1037400322, 1037400292);
    $InitializeCommonEvent(0, 90015440, 1057401201, 1037400271, 1037400331, 1037400301);
    $InitializeEvent(0, 1057402200, 1057406500, 1057400200, 1057402991);
    $InitializeCommonEvent(0, 90015140, 1057401300, 200, 9102, 1057408300);
    $InitializeCommonEvent(1, 90015140, 1057401301, 200, 9103, 1057408301);
});

$Event(1057402200, Restart, function(assetEntityId, chrEntityId, attachPointEntityId) {
    DisableCharacter(chrEntityId);
    ChangeAssetEnableStateUnknown200510(assetEntityId, Disabled, 1);
    DisableAsset(assetEntityId);
    WaitFor(SmallBaseAttached(attachPointEntityId, 53990000));
    EnableCharacter(chrEntityId);
    ChangeAssetEnableStateUnknown200510(assetEntityId, Enabled, 1);
    EnableAsset(assetEntityId);
});

$Event(1057402250, Restart, function(areaEntityId) {
    DisableNetworkSync();
    WaitFor(InArea(20000, areaEntityId) && EventFlag(1056400253));
    SetSpEffect(20000, 98218);
    RestartEvent();
});

$Event(1057402251, Restart, function(areaEntityId) {
    DisableNetworkSync();
    WaitFor(InArea(20000, areaEntityId) && EventFlag(1056400251));
    SetSpEffect(20000, 99216);
    RestartEvent();
});

