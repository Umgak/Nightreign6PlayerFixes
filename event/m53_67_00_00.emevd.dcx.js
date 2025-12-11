// ==EMEVD==
// @docs    nr-common.emedf.json
// @compress    DCX_KRAK
// @game    Sekiro
// @string    "W:\\CL\\data\\Param\\event\\common_func.emevd\u0000W:\\CL\\data\\Param\\event\\common_macro.emevd\u0000\u0000\u0000\u0000\u0000\u0000"
// @linked    [0,82]
// @version    3.6.2
// ==/EMEVD==

$Event(0, Default, function() {
    if (940000 == 0) {
        $InitializeCommonEvent(0, 90015007, 0, 53675810, 53672810, 30, 903800610, 0, 0);
        $InitializeCommonEvent(0, 90015031, 0, 53675810, 53672810, 30, 940000, 0);
    } else {
        $InitializeCommonEvent(0, 90015007, 0, 53675810, 53672810, 30, 903800610, 0, 0);
        $InitializeCommonEvent(0, 90015031, 0, 53675810, 53672810, 30, 940000, 0);
    }
    $InitializeCommonEvent(0, 90015002, 0, 0, 53670810, 53675810, 1030, 940000, 11200, 903800610, 53670510);
    $InitializeCommonEvent(0, 90015006, 53671510, 53670510, 53670810, 5);
    $InitializeCommonEvent(0, 90015005, 53671510, 53672810, 53670810);
    GotoIf(S0, Signed(0) != 0);
    GotoIf(S0, 0 != 0);
    Goto(S2);
S0:
    GotoIf(S1, 940000 != 0);
    $InitializeCommonEvent(0, 90015008, 0, 53670810, 940000, 53675810, 0, 0);
    Goto(S2);
S1:
    $InitializeCommonEvent(0, 90015008, 0, 53670810, 940000, 53675810, 0, 0);
S2:
    $InitializeCommonEvent(0, 90015462, 8260, 8261, 8262, 53670820);
    $InitializeCommonEvent(0, 90015463, 8260, 8261, 53672200);
    $InitializeCommonEvent(0, 90015000, 8261, 53670820, 904640000, 30, 0, 8262);
    $InitializeCommonEvent(0, 90015030, 8261, 53670820, 30, 920610, 8262);
    $InitializeCommonEvent(0, 90015002, 0, 0, 53670820, 53670820, 1020, 920610, 110221, 904640000, 53670820);
    $InitializeCommonEvent(0, 9005810, 53670820, 53670520, 53671520, 5);
    $InitializeCommonEvent(0, 90015005, 53671520, 53672820, 53670820);
    $InitializeCommonEvent(0, 90015466, 53670820, 8262);
    $InitializeCommonEvent(0, 90015465, 53675810, 1, 8290, 53670819);
    $InitializeCommonEvent(0, 90015465, 53670200, 0, 8290, 53670207);
    $InitializeCommonEvent(0, 90015465, 53670201, 0, 8290, 53670208);
    $InitializeCommonEvent(0, 90015465, 53670202, 0, 8290, 53670209);
});


