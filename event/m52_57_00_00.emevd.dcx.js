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
        $InitializeCommonEvent(0, 90015007, 0, 52570800, 52572800, 30, 905081100, 0, 0);
        $InitializeCommonEvent(0, 90015031, 0, 52570800, 52572800, 30, 940000, 0);
    } else {
        $InitializeCommonEvent(0, 90015007, 0, 52570800, 52572800, 30, 905081100, 0, 0);
        $InitializeCommonEvent(0, 90015031, 0, 52570800, 52572800, 30, 940000, 0);
    }
    $InitializeCommonEvent(0, 90015025, 0, 0, 52570800, 52570800, 1030, 940000, 11200, 905081100, 52570800, 2);
    $InitializeCommonEvent(0, 90015006, 52571500, 52570500, 52570800, 5);
    $InitializeCommonEvent(0, 90015005, 52571500, 52572800, 52570800);
    GotoIf(S0, Signed(0) != 0);
    GotoIf(S0, 0 != 0);
    Goto(S2);
S0:
    GotoIf(S1, 940000 != 0);
    $InitializeCommonEvent(0, 90015008, 0, 52570800, 940000, 52570800, 0, 0);
    Goto(S2);
S1:
    $InitializeCommonEvent(0, 90015008, 0, 52570800, 940000, 52570800, 0, 0);
S2:
    $InitializeCommonEvent(0, 90015050, 52570800, 8170);
    if (920210 == 0) {
        $InitializeCommonEvent(0, 90015007, 0, 52575810, 52572810, 30, 902500310, 0, 0);
        $InitializeCommonEvent(0, 90015031, 0, 52575810, 52572810, 30, 940000, 0);
    } else {
        $InitializeCommonEvent(0, 90015007, 0, 52575810, 52572810, 30, 902500310, 0, 0);
        $InitializeCommonEvent(0, 90015031, 0, 52575810, 52572810, 30, 920210, 0);
    }
    $InitializeCommonEvent(0, 90015025, 0, 0, 52570810, 52575810, 1030, 920210, 11200, 902500310, 52570510, 3);
    $InitializeCommonEvent(0, 90015006, 52571510, 52570510, 52570810, 5);
    $InitializeCommonEvent(0, 90015005, 52571510, 52572810, 52570810);
    GotoIf(S3, Signed(0) != 0);
    GotoIf(S3, 0 != 0);
    Goto(S5);
S3:
    GotoIf(S4, 920210 != 0);
    $InitializeCommonEvent(0, 90015008, 0, 52570810, 940000, 52575810, 0, 0);
    Goto(S5);
S4:
    $InitializeCommonEvent(0, 90015008, 0, 52570810, 920210, 52575810, 0, 0);
S5:
    $InitializeCommonEvent(0, 90015050, 52570810, 8170);
    $InitializeCommonEvent(0, 90035280, 52572491, 52570700, 52570701, 52570702, 8060, 0, 52570800, 52570810, 0, 0, 0);
    $InitializeCommonEvent(0, 90035280, 52572491, 52570700, 52570701, 52570702, 80010, 0, 52570800, 52570810, 0, 0, 0);
    $InitializeCommonEvent(0, 90035280, 52572491, 52570700, 52570701, 52570702, 80011, 1, 52570800, 52570810, 0, 0, 0);
    $InitializeCommonEvent(0, 90035281, 52572491, 52570700, 52570701, 52570702, 80011, 52570800, 52570810, 0, 0, 0);
    $InitializeCommonEvent(0, 90035282, 52570490, 52572490, 52570700, 52570701, 52570702, 52570703);
    $InitializeCommonEvent(0, 90035283, 52570490, 52572491, 52571690, 52570700, 52570701, 52570702, 52570704, 52570705, 52570706);
    $InitializeCommonEvent(0, 90035284, 52575490, 52575491, 52570700, 52570702, 52570705, 52570706);
    $InitializeCommonEvent(0, 90035285, 52570490, 52570700, 52570701, 52570702, 52570705, 52570706);
    $InitializeCommonEvent(0, 90035286, 52570490, 52572491, 52570700, 52570701, 52570702, 52570705, 52570706);
    $InitializeCommonEvent(0, 90035288, 52572491, 52570700, 52570702, 52570705, 52570706);
    $InitializeCommonEvent(0, 90015000, 52570704, 52570490, 907640001, 50, 0, 52570706);
    $InitializeCommonEvent(0, 90015025, 8081, 52570704, 52570705, 52570490, 1020, 0, -1, -1, 52570490, 0);
    $InitializeCommonEvent(0, 90015310, 52570050, 52570051, 2, 52570200, 52570202, 52570203, 52572405, 52572406, 52572407, 52572410, 52572411, 52572412, 52572415, 52572416, 52572417, 0, 1, 2, 52572400);
    $InitializeCommonEvent(0, 90015301, 52575300, 52570200, 52570201, 52570202, 52570203, 2);
    $InitializeCommonEvent(0, 90015306, 1056406500);
    $InitializeCommonEvent(0, 90025010, 1056402800, 9025, 3);
    $InitializeCommonEvent(0, 90015304, 52570050, 52570200, 52570202);
    if (2 >= 2) {
        $InitializeCommonEvent(0, 90015304, 52570051, 52570200, 52570203);
    }
});

