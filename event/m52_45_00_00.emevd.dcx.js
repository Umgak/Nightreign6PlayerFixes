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
        $InitializeCommonEvent(0, 90015007, 0, 52455810, 52452810, 30, 902274000, 0, 0);
        $InitializeCommonEvent(0, 90015031, 0, 52455810, 52452810, 30, 940000, 0);
    } else {
        $InitializeCommonEvent(0, 90015007, 0, 52455810, 52452810, 30, 902274000, 0, 0);
        $InitializeCommonEvent(0, 90015031, 0, 52455810, 52452810, 30, 940000, 0);
    }
    $InitializeCommonEvent(0, 90015025, 0, 0, 52450810, 52455810, 1030, 940000, 11200, 902274000, 52450510, 3);
    $InitializeCommonEvent(0, 90015006, 52451510, 52450510, 52450810, 5);
    $InitializeCommonEvent(0, 90015005, 52451510, 52452810, 52450810);
    GotoIf(S0, Signed(0) != 0);
    GotoIf(S0, 0 != 0);
    Goto(S2);
S0:
    GotoIf(S1, 940000 != 0);
    $InitializeCommonEvent(0, 90015008, 0, 52450810, 940000, 52455810, 0, 0);
    Goto(S2);
S1:
    $InitializeCommonEvent(0, 90015008, 0, 52450810, 940000, 52455810, 0, 0);
S2:
    $InitializeCommonEvent(0, 90015050, 52450810, 8175);
    $InitializeCommonEvent(0, 90035280, 52452491, 52450700, 52450701, 52450702, 8060, 0, 52450800, 52450810, 0, 0, 0);
    $InitializeCommonEvent(0, 90035280, 52452491, 52450700, 52450701, 52450702, 80010, 0, 52450800, 52450810, 0, 0, 0);
    if (!IsPlayerCount(1)) {
        $InitializeCommonEvent(0, 90035280, 52452491, 52450700, 52450701, 52450702, 80011, 1, 52450800, 52450810, 0, 0, 0);
    }
    $InitializeCommonEvent(0, 90035281, 52452491, 52450700, 52450701, 52450702, 80011, 52450800, 52450810, 0, 0, 0);
    $InitializeCommonEvent(0, 90035282, 52450490, 52452490, 52450700, 52450701, 52450702, 52450703);
    $InitializeCommonEvent(0, 90035283, 52450490, 52452491, 52451690, 52450700, 52450701, 52450702, 52450704, 52450705, 52450706);
    $InitializeCommonEvent(0, 90035284, 52455490, 52455491, 52450700, 52450702, 52450705, 52450706);
    $InitializeCommonEvent(0, 90035285, 52450490, 52450700, 52450701, 52450702, 52450705, 52450706);
    $InitializeCommonEvent(0, 90035286, 52450490, 52452491, 52450700, 52450701, 52450702, 52450705, 52450706);
    $InitializeCommonEvent(0, 90035288, 52452491, 52450700, 52450702, 52450705, 52450706);
    $InitializeCommonEvent(0, 90015000, 52450704, 52450490, 907640001, 50, 0, 52450706);
    $InitializeCommonEvent(0, 90015025, 8081, 52450704, 52450705, 52450490, 1020, 0, -1, -1, 52450490, 0);
    $InitializeCommonEvent(0, 90015310, 52450050, 52450051, 1, 52450200, 52450202, 52450203, 52452405, 52452406, 52452407, 52452410, 52452411, 52452412, 0, 1, 2, 0, 1, 2, 52452400);
    $InitializeCommonEvent(0, 90015301, 52455300, 52450200, 52450201, 52450202, 52450203, 1);
    $InitializeCommonEvent(0, 90015306, 1058406500);
    $InitializeCommonEvent(0, 90025010, 1058402800, 9025, 4);
    $InitializeCommonEvent(0, 90015305, 52452430, 52452431, 52452432, 52452433);
    $InitializeCommonEvent(0, 90015304, 52450050, 52450200, 52450202);
    if (1 >= 2) {
        $InitializeCommonEvent(0, 90015304, 52450051, 52450200, 52450203);
    }
});

