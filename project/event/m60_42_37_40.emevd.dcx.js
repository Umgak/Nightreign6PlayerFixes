// ==EMEVD==
// @docs    nr-common.emedf.json
// @compress    DCX_KRAK
// @game    Sekiro
// @string    "W:\\CL\\data\\Param\\event\\common_func.emevd\u0000W:\\CL\\data\\Param\\event\\common_macro.emevd\u0000\u0000\u0000\u0000\u0000\u0000"
// @linked    [0,82]
// @version    3.6.2
// ==/EMEVD==

$Event(0, Default, function() {
    $InitializeCommonEvent(0, 90015150, 1027400300, 75051);
    $InitializeCommonEvent(0, 90015151, 1027400300, 76011);
    $InitializeCommonEvent(0, 90015152, 1027400300, 76011);
    $InitializeCommonEvent(0, 90015150, 1027400301, 75052);
    $InitializeCommonEvent(0, 90015151, 1027400301, 76012);
    $InitializeCommonEvent(0, 90015152, 1027400301, 76012);
    $InitializeCommonEvent(0, 90015440, 1027401200, 1037400250, 1037400310, 1037400280);
    $InitializeCommonEvent(0, 90015440, 1027401201, 1037400251, 1037400311, 1037400281);
    $InitializeCommonEvent(0, 90015440, 1027401202, 1037400252, 1037400312, 1037400282);
    $InitializeCommonEvent(0, 90015440, 1027401203, 1037400274, 1037400334, 1037400304);
    $InitializeEvent(0, 1036402210, 1027402500);
    $InitializeEvent(1, 1036402210, 1027402501);
    $InitializeCommonEvent(0, 90015140, 1027401300, 200, 9110, 1027408300);
    $InitializeCommonEvent(0, 90005931, 1027400390, 1027401291, 0, 1027401292);
    $InitializeCommonEvent(0, 91005503, 1027401250);
    $InitializeCommonEvent(0, 91005503, 1027401251);
});

$Event(1027402200, Default, function() {
    CreateAssetfollowingSFX(1027401200, 200, 807535);
});

$Event(1027402205, Default, function(eventFlagId) {
    WaitFor(EventFlag(eventFlagId));
    RequestAssetDestruction(1027401200, 0);
    SpawnOneshotSFX(TargetEntityType.Asset, 1027401200, -1, 807536);
    WaitFixedTimeSeconds(1);
    WaitFor(!EventFlag(eventFlagId));
    RequestAssetRestoration(1027401200);
    RestartEvent();
});

$Event(1036402210, Restart, function(areaEntityId) {
    DisableNetworkSync();
    WaitFor(InArea(20000, areaEntityId));
    SetSpEffect(20000, 99215);
    RestartEvent();
});

