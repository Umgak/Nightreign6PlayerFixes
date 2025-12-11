// ==EMEVD==
// @docs    nr-common.emedf.json
// @compress    DCX_KRAK
// @game    Sekiro
// @string    "W:\\CL\\data\\Param\\event\\common_func.emevd\u0000W:\\CL\\data\\Param\\event\\common_macro.emevd\u0000\u0000\u0000\u0000\u0000\u0000"
// @linked    [0,82]
// @version    3.6.2
// ==/EMEVD==

$Event(0, Default, function() {
    $InitializeEvent(0, 41012500, 41011500, 200, 803600);
    $InitializeCommonEvent(0, 90015009, 41014700, 41011501, 0, 1);
    $InitializeCommonEvent(0, 90015208, 9328, 41014700, 9040);
    $InitializeEvent(0, 41012510);
    $InitializeEvent(0, 41012520);
    $InitializeCommonEvent(0, 90015500, 41012300);
});

$Event(41012500, Restart, function(entityId, dummypolyId, sfxId) {
    SpawnOneshotSFX(TargetEntityType.Asset, entityId, dummypolyId, sfxId);
});

$Event(41012510, Default, function() {
    DisableNetworkSync();
    WaitFor(EventFlag(41014700));
    SetWorldMapPointFlag(7, ON);
    SetWorldMapPointFlag(8, OFF);
});

$Event(41012520, Default, function() {
    DisableNetworkSync();
    EndIf(EventFlag(41014700));
    WaitFor(EventFlag(41014700));
    ForceAnimationPlayback(20000, 60071, false, false, false);
    SetSpEffect(20000, 99270);
});


