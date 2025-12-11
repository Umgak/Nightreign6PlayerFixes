// ==EMEVD==
// @docs    nr-common.emedf.json
// @compress    DCX_KRAK
// @game    Sekiro
// @string    "W:\\CL\\data\\Param\\event\\common_func.emevd\u0000W:\\CL\\data\\Param\\event\\common_macro.emevd\u0000\u0000\u0000\u0000\u0000\u0000"
// @linked    [0,82]
// @version    3.6.2
// ==/EMEVD==

$Event(0, Default, function() {
    RegisterBonfire(1036401950, 0, 5);
    $InitializeCommonEvent(0, 90015004, 1036401950, 1036400950);
    $InitializeCommonEvent(0, 90005580, 1036401951, 1036400951, 7663);
    $InitializeCommonEvent(0, 90065901, 1036404890);
    $InitializeCommonEvent(0, 90015150, 1036400300, 75055);
    $InitializeCommonEvent(0, 90015151, 1036400300, 76015);
    $InitializeCommonEvent(0, 90015152, 1036400300, 76015);
    $InitializeCommonEvent(0, 90015150, 1036400301, 75056);
    $InitializeCommonEvent(0, 90015151, 1036400301, 76016);
    $InitializeCommonEvent(0, 90015152, 1036400301, 76016);
    $InitializeCommonEvent(0, 90005931, 1036400390, 1036401201, 0, 1036401202);
    $InitializeCommonEvent(0, 90005915, 1036401600, 1036408000, 90040, 300);
    $InitializeCommonEvent(0, 90015009, 1036408000, 1036401600, 0, 0);
    $InitializeEvent(0, 1036402500, 1036402501);
    $InitializeCommonEvent(0, 91005503, 1036401250);
    $InitializeCommonEvent(0, 91005503, 1036401251);
    $InitializeCommonEvent(0, 90015440, 1036401510, 1037400265, 1037400325, 1037400295);
    $InitializeCommonEvent(0, 90015440, 1036401511, 1037400266, 1037400326, 1037400296);
    $InitializeCommonEvent(0, 90015440, 1036401512, 1037400275, 1037400335, 1037400305);
});

$Event(1036402500, Restart, function(areaEntityId) {
    DisableNetworkSync();
    WaitFor(InArea(20000, areaEntityId));
    SetSpEffect(20000, 99215);
    RestartEvent();
});


