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
        $InitializeCommonEvent(0, 90015007, 0, 53680800, 53682800, 30, 905250600, 0, 0);
        $InitializeCommonEvent(0, 90015031, 0, 53680800, 53682800, 30, 940000, 0);
    } else {
        $InitializeCommonEvent(0, 90015007, 0, 53680800, 53682800, 30, 905250600, 0, 0);
        $InitializeCommonEvent(0, 90015031, 0, 53680800, 53682800, 30, 941010, 0);
    }
    $InitializeCommonEvent(0, 90015002, 0, 0, 53680800, 53680800, 1030, 941010, 11200, 905250600, 53680800);
    $InitializeCommonEvent(0, 90015006, 53681500, 53680500, 53680800, 5);
    $InitializeCommonEvent(0, 90015005, 53681500, 53682800, 53680800);
    GotoIf(S0, Signed(0) != 0);
    GotoIf(S0, 0 != 0);
    Goto(S2);
S0:
    GotoIf(S1, 941010 != 0);
    $InitializeCommonEvent(0, 90015008, 0, 53680800, 940000, 53680800, 0, 0);
    Goto(S2);
S1:
    $InitializeCommonEvent(0, 90015008, 0, 53680800, 941010, 53680800, 0, 0);
S2:
    $InitializeCommonEvent(0, 90015462, 8260, 8261, 8262, 53680810);
    $InitializeCommonEvent(0, 90015463, 8260, 8261, 53682200);
    $InitializeCommonEvent(0, 90015000, 8261, 53680810, 904980600, 30, 0, 8262);
    $InitializeCommonEvent(0, 90015030, 8261, 53680810, 30, 920110, 8262);
    $InitializeCommonEvent(0, 90015002, 0, 0, 53680810, 53680810, 1020, 920110, 110221, 904980600, 53680810);
    $InitializeCommonEvent(0, 9005810, 53680810, 53680510, 53681510, 5);
    $InitializeCommonEvent(0, 90015005, 53681510, 53682810, 53680810);
    $InitializeCommonEvent(0, 90015466, 53680810, 8262);
    $InitializeCommonEvent(0, 90015465, 53680800, 1, 8290, 53680809);
    $InitializeCommonEvent(0, 90015465, 53680200, 0, 8290, 53680207);
    $InitializeCommonEvent(0, 90015465, 53680201, 0, 8290, 53680208);
    $InitializeCommonEvent(0, 90015465, 53680202, 0, 8290, 53680209);
    $InitializeCommonEvent(0, 90005201, 53680400, 30000, 20000, 5, 0.5, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90005201, 53680401, 30000, 20000, 5, 0.5, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90005201, 53680402, 30000, 20000, 5, 0.5, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90005201, 53680403, 30000, 20000, 5, 0.5, 0, 0, 0, 0);
});

