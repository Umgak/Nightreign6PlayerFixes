// ==EMEVD==
// @docs    nr-common.emedf.json
// @compress    DCX_KRAK
// @game    Sekiro
// @string    "W:\\CL\\data\\Param\\event\\common_func.emevd\u0000W:\\CL\\data\\Param\\event\\common_macro.emevd\u0000\u0000\u0000\u0000\u0000\u0000"
// @linked    [0,82]
// @version    3.6.2
// ==/EMEVD==

$Event(0, Default, function() {
    $InitializeEvent(0, 1058402000, 1058402501);
    $InitializeEvent(1, 1058402000, 1058402502);
    $InitializeCommonEvent(0, 90015440, 1058401200, 1037400263, 1037400323, 1037400293);
    $InitializeCommonEvent(0, 90015440, 1058401201, 1037400279, 1037400339, 1037400309);
    $InitializeCommonEvent(0, 90015140, 1058401300, 200, 9104, 1058408300);
    $InitializeCommonEvent(0, 90005931, 1058400390, 1058401291, 0, 1058401292);
});

$Event(1058402000, Restart, function(areaEntityId) {
    DisableNetworkSync();
    WaitFor(InArea(20000, areaEntityId));
    SetSpEffect(20000, 99216);
    RestartEvent();
});


