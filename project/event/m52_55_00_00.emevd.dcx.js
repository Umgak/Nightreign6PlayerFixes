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
        $InitializeCommonEvent(0, 90015007, 0, 52550800, 52552800, 30, 903181300, 0, 0);
        $InitializeCommonEvent(0, 90015031, 0, 52550800, 52552800, 30, 940000, 0);
    } else {
        $InitializeCommonEvent(0, 90015007, 0, 52550800, 52552800, 30, 903181300, 0, 0);
        $InitializeCommonEvent(0, 90015031, 0, 52550800, 52552800, 30, 940000, 0);
    }
    $InitializeCommonEvent(0, 90015025, 0, 0, 52550800, 52550800, 1030, 940000, 11200, 903181300, 52550800, 2);
    $InitializeCommonEvent(0, 90015006, 52551500, 52550500, 52550800, 5);
    $InitializeCommonEvent(0, 90015005, 52551500, 52552800, 52550800);
    GotoIf(S0, Signed(0) != 0);
    GotoIf(S0, 0 != 0);
    Goto(S2);
S0:
    GotoIf(S1, 940000 != 0);
    $InitializeCommonEvent(0, 90015008, 0, 52550800, 940000, 52550800, 0, 0);
    Goto(S2);
S1:
    $InitializeCommonEvent(0, 90015008, 0, 52550800, 940000, 52550800, 0, 0);
S2:
    $InitializeCommonEvent(0, 90015050, 52550800, 8170);
    if (467010 == 0) {
        $InitializeCommonEvent(0, 90015007, 0, 52550810, 52552810, 30, 904670030, 0, 0);
        $InitializeCommonEvent(0, 90015031, 0, 52550810, 52552810, 30, 940000, 0);
    } else {
        $InitializeCommonEvent(0, 90015007, 0, 52550810, 52552810, 30, 904670030, 0, 0);
        $InitializeCommonEvent(0, 90015031, 0, 52550810, 52552810, 30, 467010, 0);
    }
    $InitializeCommonEvent(0, 90015025, 0, 0, 52550810, 52550810, 1030, 467010, 11200, 904670030, 52550810, 3);
    $InitializeCommonEvent(0, 90015006, 52551510, 52550510, 52550810, 5);
    $InitializeCommonEvent(0, 90015005, 52551510, 52552810, 52550810);
    GotoIf(S3, Signed(0) != 0);
    GotoIf(S3, 1057803469 != 0);
    Goto(S5);
S3:
    GotoIf(S4, 467010 != 0);
    $InitializeCommonEvent(0, 90015008, 0, 52550810, 940000, 52550810, 0, 0.55);
    Goto(S5);
S4:
    $InitializeCommonEvent(0, 90015008, 0, 52550810, 467010, 52550810, 0, 0.55);
S5:
    $InitializeCommonEvent(0, 90015050, 52550810, 8170);
    $InitializeCommonEvent(0, 90035280, 52552491, 52550700, 52550701, 52550702, 8060, 0, 52550800, 52550810, 0, 0, 0);
    $InitializeCommonEvent(0, 90035280, 52552491, 52550700, 52550701, 52550702, 80010, 0, 52550800, 52550810, 0, 0, 0);
    $InitializeCommonEvent(0, 90035280, 52552491, 52550700, 52550701, 52550702, 80011, 1, 52550800, 52550810, 0, 0, 0);
    $InitializeCommonEvent(0, 90035281, 52552491, 52550700, 52550701, 52550702, 80011, 52550800, 52550810, 0, 0, 0);
    $InitializeCommonEvent(0, 90035282, 52550490, 52552490, 52550700, 52550701, 52550702, 52550703);
    $InitializeCommonEvent(0, 90035283, 52550490, 52552491, 52551690, 52550700, 52550701, 52550702, 52550704, 52550705, 52550706);
    $InitializeCommonEvent(0, 90035284, 52555490, 52555491, 52550700, 52550702, 52550705, 52550706);
    $InitializeCommonEvent(0, 90035285, 52550490, 52550700, 52550701, 52550702, 52550705, 52550706);
    $InitializeCommonEvent(0, 90035286, 52550490, 52552491, 52550700, 52550701, 52550702, 52550705, 52550706);
    $InitializeCommonEvent(0, 90035288, 52552491, 52550700, 52550702, 52550705, 52550706);
    $InitializeCommonEvent(0, 90015000, 52550704, 52550490, 907640001, 50, 0, 52550706);
    $InitializeCommonEvent(0, 90015025, 8081, 52550704, 52550705, 52550490, 1020, 0, -1, -1, 52550490, 0);
    $InitializeCommonEvent(0, 90015310, 52550050, 52550051, 2, 52550200, 52550202, 52550203, 52552405, 52552406, 52552407, 52552410, 52552411, 52552412, 52552415, 52552416, 52552417, 0, 1, 2, 52552400);
    $InitializeCommonEvent(0, 90015301, 52555300, 52550200, 52550201, 52550202, 52550203, 2);
    $InitializeCommonEvent(0, 90015306, 1056406500);
    $InitializeCommonEvent(0, 90025010, 1056402800, 9025, 3);
    $InitializeCommonEvent(0, 90015304, 52550050, 52550200, 52550202);
    if (2 >= 2) {
        $InitializeCommonEvent(0, 90015304, 52550051, 52550200, 52550203);
    }
});

