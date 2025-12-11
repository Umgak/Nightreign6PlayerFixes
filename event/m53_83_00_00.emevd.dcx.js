// ==EMEVD==
// @docs    nr-common.emedf.json
// @compress    DCX_KRAK
// @game    Sekiro
// @string    "W:\\CL\\data\\Param\\event\\common_func.emevd\u0000W:\\CL\\data\\Param\\event\\common_macro.emevd\u0000\u0000\u0000\u0000\u0000\u0000"
// @linked    [0,82]
// @version    3.6.2
// ==/EMEVD==

$Event(0, Default, function() {
    if (941010 == 0) {
        $InitializeCommonEvent(0, 90015007, 0, 53830800, 53832800, 30, 905250600, 0, 0);
        $InitializeCommonEvent(0, 90015031, 0, 53830800, 53832800, 30, 940000, 0);
    } else {
        $InitializeCommonEvent(0, 90015007, 0, 53830800, 53832800, 30, 905250600, 0, 0);
        $InitializeCommonEvent(0, 90015031, 0, 53830800, 53832800, 30, 941010, 0);
    }
    $InitializeCommonEvent(0, 90015002, 0, 0, 53830800, 53830800, 1030, 941010, 11200, 905250600, 53830800);
    $InitializeCommonEvent(0, 90015006, 53831500, 53830500, 53830800, 5);
    $InitializeCommonEvent(0, 90015005, 53831500, 53832800, 53830800);
    GotoIf(S0, Signed(0) != 0);
    GotoIf(S0, 0 != 0);
    Goto(S2);
S0:
    GotoIf(S1, 941010 != 0);
    $InitializeCommonEvent(0, 90015008, 0, 53830800, 940000, 53830800, 0, 0);
    Goto(S2);
S1:
    $InitializeCommonEvent(0, 90015008, 0, 53830800, 941010, 53830800, 0, 0);
S2:
    $InitializeCommonEvent(0, 90015465, 53830800, 1, 8280, 53830809);
    $InitializeCommonEvent(0, 90015465, 53830200, 0, 8280, 53830209);
});

$Event(50, Default, function() {
    $InitializeCommonEvent(0, 90005201, 53830400, 30000, 20000, 5, 0.5, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90005201, 53830401, 30000, 20000, 5, 0.5, 0, 0, 0, 0);
});


