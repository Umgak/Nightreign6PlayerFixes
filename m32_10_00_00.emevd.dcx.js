// ==EMEVD==
// @docs    nr-common.emedf.json
// @compress    DCX_KRAK
// @game    Sekiro
// @string    "W:\\CL\\data\\Param\\event\\common_func.emevd\u0000W:\\CL\\data\\Param\\event\\common_macro.emevd\u0000\u0000\u0000\u0000\u0000\u0000"
// @linked    [0,82]
// @version    3.6.1
// ==/EMEVD==

$Event(0, Default, function() {
    $InitializeCommonEvent(0, 90015310, 32100050, 32100051, 2, 32100200, 32100202, 32100203, 32102405, 32102406, 32102407, 32102410, 32102411, 32102412, 32102415, 32102416, 32102417, 32102420, 32102421, 32102422, 32102400);
    $InitializeCommonEvent(0, 90015301, 32105300, 32100200, 32100201, 32100202, 32100203, 2);
    $InitializeCommonEvent(0, 90015302, 32106500);
    $InitializeCommonEvent(0, 90015303, 32102401);
    $InitializeCommonEvent(0, 90015305, 32102430, 32102431, 32102432, 32102433);
    $InitializeCommonEvent(0, 90015304, 32100050, 32100200, 32100202);
    if (2 >= 2) {
        $InitializeCommonEvent(0, 90015304, 32100051, 32100200, 32100203);
    }
    if (940000 == 0) {
        $InitializeCommonEvent(0, 90015007, 0, 32100800, 32102800, 30, 903460500, 0, 0);
        $InitializeCommonEvent(0, 90015031, 0, 32100800, 32102800, 30, 940000, 0);
    } else {
        $InitializeCommonEvent(0, 90015007, 0, 32100800, 32102800, 30, 903460500, 0, 0);
        $InitializeCommonEvent(0, 90015031, 0, 32100800, 32102800, 30, 940000, 0);
    }
    $InitializeCommonEvent(0, 90015002, 0, 0, 32100800, 32100800, 1030, 940000, 11200, 903460500, 32100800);
    $InitializeCommonEvent(0, 90015006, 32101500, 32100500, 32100800, 5);
    $InitializeCommonEvent(0, 90015005, 32101500, 32102800, 32100800);
    GotoIf(S0, Signed(0) != 0);
    GotoIf(S0, 0 != 0);
    Goto(S2);
S0:
    GotoIf(S1, 940000 != 0);
    $InitializeCommonEvent(0, 90015008, 0, 32100800, 940000, 32100800, 0, 0);
    Goto(S2);
S1:
    $InitializeCommonEvent(0, 90015008, 0, 32100800, 940000, 32100800, 0, 0);
S2:
    if (IsMapVariation(0)) {
        $InitializeCommonEvent(0, 90015050, 32100800, 8165);
    }
    if (940000 == 0) {
        $InitializeCommonEvent(0, 90015007, 0, 32105810, 32102810, 30, 904354000, 0, 0);
        $InitializeCommonEvent(0, 90015031, 0, 32105810, 32102810, 30, 940000, 0);
    } else {
        $InitializeCommonEvent(0, 90015007, 0, 32105810, 32102810, 30, 904354000, 0, 0);
        $InitializeCommonEvent(0, 90015031, 0, 32105810, 32102810, 30, 940000, 0);
    }
    $InitializeCommonEvent(0, 90015002, 0, 0, 32100810, 32105810, 1030, 940000, 11200, 904354000, 32100510);
    $InitializeCommonEvent(0, 90015006, 32101510, 32100510, 32100810, 5);
    $InitializeCommonEvent(0, 90015005, 32101510, 32102810, 32100810);
    GotoIf(S3, Signed(0) != 0);
    GotoIf(S3, 0 != 0);
    Goto(S5);
S3:
    GotoIf(S4, 940000 != 0);
    $InitializeCommonEvent(0, 90015008, 0, 32100810, 940000, 32105810, 0, 0);
    Goto(S5);
S4:
    $InitializeCommonEvent(0, 90015008, 0, 32100810, 940000, 32105810, 0, 0);
S5:
    if (IsMapVariation(1)) {
        $InitializeCommonEvent(0, 90015050, 32100810, 8165);
    }
    if (940000 == 0) {
        $InitializeCommonEvent(0, 90015007, 0, 32105820, 32102820, 30, 904353000, 0, 0);
        $InitializeCommonEvent(0, 90015031, 0, 32105820, 32102820, 30, 940000, 0);
    } else {
        $InitializeCommonEvent(0, 90015007, 0, 32105820, 32102820, 30, 904353000, 0, 0);
        $InitializeCommonEvent(0, 90015031, 0, 32105820, 32102820, 30, 940000, 0);
    }
    $InitializeCommonEvent(0, 90015002, 0, 0, 32100820, 32105820, 1030, 940000, 11200, 904353000, 32100520);
    $InitializeCommonEvent(0, 90015006, 32101520, 32100520, 32100820, 5);
    $InitializeCommonEvent(0, 90015005, 32101520, 32102820, 32100820);
    GotoIf(S6, Signed(0) != 0);
    GotoIf(S6, 0 != 0);
    Goto(S8);
S6:
    GotoIf(S7, 940000 != 0);
    $InitializeCommonEvent(0, 90015008, 0, 32100820, 940000, 32105820, 0, 0);
    Goto(S8);
S7:
    $InitializeCommonEvent(0, 90015008, 0, 32100820, 940000, 32105820, 0, 0);
S8:
    if (IsMapVariation(2)) {
        $InitializeCommonEvent(0, 90015050, 32100820, 8165);
    }
    $InitializeCommonEvent(0, 90085700, 701, 8475, 0, 32100800);
    $InitializeCommonEvent(0, 90085700, 701, 8475, 1, 32100810);
    $InitializeCommonEvent(0, 90085700, 701, 8475, 2, 32100820);
});


