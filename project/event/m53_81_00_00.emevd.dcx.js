// ==EMEVD==
// @docs    nr-common.emedf.json
// @compress    DCX_KRAK
// @game    Sekiro
// @string    "W:\\CL\\data\\Param\\event\\common_func.emevd\u0000W:\\CL\\data\\Param\\event\\common_macro.emevd\u0000\u0000\u0000\u0000\u0000\u0000"
// @linked    [0,82]
// @version    3.6.2
// ==/EMEVD==

$Event(0, Default, function() {
    if (920610 == 0) {
        $InitializeCommonEvent(0, 90015007, 0, 53810800, 53812800, 30, 904811000, 0, 0);
        $InitializeCommonEvent(0, 90015031, 0, 53810800, 53812800, 30, 940000, 0);
    } else {
        $InitializeCommonEvent(0, 90015007, 0, 53810800, 53812800, 30, 904811000, 0, 0);
        $InitializeCommonEvent(0, 90015031, 0, 53810800, 53812800, 30, 920610, 0);
    }
    $InitializeCommonEvent(0, 90015002, 0, 0, 53810800, 53810800, 1030, 920610, 11200, 904811000, 53810800);
    $InitializeCommonEvent(0, 90015006, 53811500, 53810500, 53810800, 5);
    $InitializeCommonEvent(0, 90015005, 53811500, 53812800, 53810800);
    GotoIf(S0, Signed(0) != 0);
    GotoIf(S0, 0 != 0);
    Goto(S2);
S0:
    GotoIf(S1, 920610 != 0);
    $InitializeCommonEvent(0, 90015008, 0, 53810800, 940000, 53810800, 0, 0);
    Goto(S2);
S1:
    $InitializeCommonEvent(0, 90015008, 0, 53810800, 920610, 53810800, 0, 0);
S2:
    $InitializeCommonEvent(0, 90015465, 53810800, 1, 8280, 53810809);
    $InitializeCommonEvent(0, 90015465, 53810200, 0, 8280, 53810209);
});

