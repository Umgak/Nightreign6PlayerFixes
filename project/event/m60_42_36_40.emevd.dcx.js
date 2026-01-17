// ==EMEVD==
// @docs    nr-common.emedf.json
// @compress    DCX_KRAK
// @game    Sekiro
// @string    "W:\\CL\\data\\Param\\event\\common_func.emevd\u0000W:\\CL\\data\\Param\\event\\common_macro.emevd\u0000\u0000\u0000\u0000\u0000\u0000"
// @linked    [0,82]
// @version    3.6.2
// ==/EMEVD==

$Event(0, Default, function() {
    RegisterBonfire(1026401950, 0, 5);
    $InitializeCommonEvent(0, 90015004, 1026401950, 1026400950);
    $InitializeCommonEvent(0, 90015000, 0, 1026405800, 904050600, 30, 0, 0);
    $InitializeCommonEvent(0, 90015030, 0, 1026405800, 30, 920910, 0);
    $InitializeCommonEvent(0, 90015002, 0, 0, 1026400800, 1026405800, 1030, 920910, 11290, 904050600, 1026400500);
    $InitializeCommonEvent(0, 9005810, 1026400800, 1026400500, 1026401500, 5);
    $InitializeCommonEvent(0, 90015005, 1026401500, 1026402800, 1026400800);
    GotoIf(S0, Signed(0) != 0);
    GotoIf(S0, 0 != 0);
    Goto(S1);
S0:
    $InitializeCommonEvent(0, 90015008, 0, 1026400800, 920910, 1026405800, 0, 0);
S1:
    if (0 != 0) {
        $InitializeCommonEvent(0, 90015013);
    }
    $InitializeCommonEvent(0, 90015015, 1026400800);
    $InitializeCommonEvent(0, 90015016, 1026400800);
    if (EventFlag(7604)) {
        $InitializeCommonEvent(0, 90015071, 1026400800);
    }
    $InitializeCommonEvent(0, 90015150, 1026400200, 75050);
    $InitializeCommonEvent(0, 90015151, 1026400200, 76010);
    $InitializeCommonEvent(0, 90015152, 1026400200, 76010);
    $InitializeEvent(0, 1026402500, 1036402501);
});

$Event(1026402500, Restart, function(areaEntityId) {
    DisableNetworkSync();
    WaitFor(InArea(20000, areaEntityId));
    SetSpEffect(20000, 98218);
    RestartEvent();
});

