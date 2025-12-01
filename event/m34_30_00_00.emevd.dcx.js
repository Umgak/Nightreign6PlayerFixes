// ==EMEVD==
// @docs    nr-common.emedf.json
// @compress    DCX_KRAK
// @game    Sekiro
// @string    "W:\\CL\\data\\Param\\event\\common_func.emevd\u0000W:\\CL\\data\\Param\\event\\common_macro.emevd\u0000\u0000\u0000\u0000\u0000\u0000"
// @linked    [0,82]
// @version    3.6.1
// ==/EMEVD==

$Event(0, Default, function() {
    $InitializeCommonEvent(0, 90015310, 34300050, 34300051, 2, 34300200, 34300202, 34300203, 34302405, 34302406, 34302407, 34302410, 34302411, 34302412, 34302415, 34302416, 34302417, 34302420, 34302421, 34302422, 34302400);
    $InitializeCommonEvent(0, 90015301, 34305300, 34300200, 34300201, 34300202, 34300203, 2);
    $InitializeCommonEvent(0, 90015302, 34306500);
    $InitializeCommonEvent(0, 90015303, 34302401);
    $InitializeCommonEvent(0, 90015305, 34302430, 34302431, 34302432, 34302433);
    $InitializeCommonEvent(0, 90015304, 34300050, 34300200, 34300202);
    if (2 >= 2) {
        $InitializeCommonEvent(0, 90015304, 34300051, 34300200, 34300203);
    }
    if (940000 == 0) {
        $InitializeCommonEvent(0, 90015007, 0, 34305800, 34302800, 30, 903970313, 0, 0);
        $InitializeCommonEvent(0, 90015031, 0, 34305800, 34302800, 30, 940000, 0);
    } else {
        $InitializeCommonEvent(0, 90015007, 0, 34305800, 34302800, 30, 903970313, 0, 0);
        $InitializeCommonEvent(0, 90015031, 0, 34305800, 34302800, 30, 940000, 0);
    }
    $InitializeCommonEvent(0, 90015002, 0, 0, 34300800, 34305800, 1030, 940000, 11200, 903970313, 34300500);
    $InitializeCommonEvent(0, 90015006, 34301500, 34300500, 34300800, 5);
    $InitializeCommonEvent(0, 90015005, 34301500, 34302800, 34300800);
    GotoIf(S0, Signed(0) != 0);
    GotoIf(S0, 0 != 0);
    Goto(S2);
S0:
    GotoIf(S1, 940000 != 0);
    $InitializeCommonEvent(0, 90015008, 0, 34300800, 940000, 34305800, 0, 0);
    Goto(S2);
S1:
    $InitializeCommonEvent(0, 90015008, 0, 34300800, 940000, 34305800, 0, 0);
S2:
    if (IsMapVariation(0)) {
        $InitializeCommonEvent(0, 90015050, 34300800, 8170);
    }
    $InitializeCommonEvent(0, 90005526, 34300500, 34301200);
    $InitializeCommonEvent(0, 90085700, 701, 8475, 0, 34300800);
});


