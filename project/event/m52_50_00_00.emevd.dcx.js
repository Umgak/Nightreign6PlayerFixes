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
        $InitializeCommonEvent(0, 90015007, 0, 52505800, 52502800, 30, 904561000, 0, 0);
        $InitializeCommonEvent(0, 90015031, 0, 52505800, 52502800, 30, 940000, 0);
    } else {
        $InitializeCommonEvent(0, 90015007, 0, 52505800, 52502800, 30, 904561000, 0, 0);
        $InitializeCommonEvent(0, 90015031, 0, 52505800, 52502800, 30, 940000, 0);
    }
    $InitializeCommonEvent(0, 90015025, 0, 0, 52500800, 52505800, 1030, 940000, 11200, 904561000, 52500500, 2);
    $InitializeCommonEvent(0, 90015006, 52501500, 52500500, 52500800, 5);
    $InitializeCommonEvent(0, 90015005, 52501500, 52502800, 52500800);
    GotoIf(S0, Signed(0) != 0);
    GotoIf(S0, 0 != 0);
    Goto(S2);
S0:
    GotoIf(S1, 940000 != 0);
    $InitializeCommonEvent(0, 90015008, 0, 52500800, 940000, 52505800, 0, 0);
    Goto(S2);
S1:
    $InitializeCommonEvent(0, 90015008, 0, 52500800, 940000, 52505800, 0, 0);
S2:
    $InitializeCommonEvent(0, 90015050, 52500800, 8170);
    if (IsMapVariation(0)) {
        $InitializeCommonEvent(0, 90045040, 0, 52500400);
        $InitializeCommonEvent(0, 90045041, 0, 52500400, 52505200, 52505201);
    }
    if (IsMapVariation(0)) {
        $InitializeCommonEvent(0, 90045040, 0, 52500401);
        $InitializeCommonEvent(0, 90045041, 0, 52500401, 52505210, 52505211);
    }
    if (IsMapVariation(0)) {
        $InitializeCommonEvent(0, 90045040, 0, 52500402);
        $InitializeCommonEvent(0, 90045041, 0, 52500402, 52505220, 52505221);
    }
    if (940000 == 0) {
        $InitializeCommonEvent(0, 90015007, 0, 52500810, 52502810, 30, 905081000, 0, 0);
        $InitializeCommonEvent(0, 90015031, 0, 52500810, 52502810, 30, 940000, 0);
    } else {
        $InitializeCommonEvent(0, 90015007, 0, 52500810, 52502810, 30, 905081000, 0, 0);
        $InitializeCommonEvent(0, 90015031, 0, 52500810, 52502810, 30, 940000, 0);
    }
    $InitializeCommonEvent(0, 90015025, 0, 0, 52500810, 52500810, 1030, 940000, 11200, 905081000, 52500810, 3);
    $InitializeCommonEvent(0, 90015006, 52501510, 52500510, 52500810, 5);
    $InitializeCommonEvent(0, 90015005, 52501510, 52502810, 52500810);
    GotoIf(S3, Signed(0) != 0);
    GotoIf(S3, 0 != 0);
    Goto(S5);
S3:
    GotoIf(S4, 940000 != 0);
    $InitializeCommonEvent(0, 90015008, 0, 52500810, 940000, 52500810, 0, 0);
    Goto(S5);
S4:
    $InitializeCommonEvent(0, 90015008, 0, 52500810, 940000, 52500810, 0, 0);
S5:
    $InitializeCommonEvent(0, 90015050, 52500810, 8170);
    $InitializeCommonEvent(0, 90035280, 52502491, 52500700, 52500701, 52500702, 8060, 0, 52500800, 52500810, 0, 0, 0);
    $InitializeCommonEvent(0, 90035280, 52502491, 52500700, 52500701, 52500702, 80010, 0, 52500800, 52500810, 0, 0, 0);
    $InitializeCommonEvent(0, 90035280, 52502491, 52500700, 52500701, 52500702, 80011, 1, 52500800, 52500810, 0, 0, 0);
    $InitializeCommonEvent(0, 90035281, 52502491, 52500700, 52500701, 52500702, 80011, 52500800, 52500810, 0, 0, 0);
    $InitializeCommonEvent(0, 90035282, 52500490, 52502490, 52500700, 52500701, 52500702, 52500703);
    $InitializeCommonEvent(0, 90035283, 52500490, 52502491, 52501690, 52500700, 52500701, 52500702, 52500704, 52500705, 52500706);
    $InitializeCommonEvent(0, 90035284, 52505490, 52505491, 52500700, 52500702, 52500705, 52500706);
    $InitializeCommonEvent(0, 90035285, 52500490, 52500700, 52500701, 52500702, 52500705, 52500706);
    $InitializeCommonEvent(0, 90035286, 52500490, 52502491, 52500700, 52500701, 52500702, 52500705, 52500706);
    $InitializeCommonEvent(0, 90035288, 52502491, 52500700, 52500702, 52500705, 52500706);
    $InitializeCommonEvent(0, 90015000, 52500704, 52500490, 907640001, 50, 0, 52500706);
    $InitializeCommonEvent(0, 90015025, 8081, 52500704, 52500705, 52500490, 1020, 0, -1, -1, 52500490, 0);
    $InitializeCommonEvent(0, 90015310, 52500050, 52500051, 2, 52500200, 52500202, 52500203, 52502405, 52502406, 52502407, 52502410, 52502411, 52502412, 52502415, 52502416, 52502417, 0, 1, 2, 52502400);
    $InitializeCommonEvent(0, 90015301, 52505300, 52500200, 52500201, 52500202, 52500203, 2);
    $InitializeCommonEvent(0, 90015306, 1027406500);
    $InitializeCommonEvent(0, 90025010, 1027402800, 9025, 1);
    $InitializeCommonEvent(0, 90015304, 52500050, 52500200, 52500202);
    if (2 >= 2) {
        $InitializeCommonEvent(0, 90015304, 52500051, 52500200, 52500203);
    }
    $InitializeCommonEvent(0, 90015140, 52501550, 210, 9112, 52508550);
    $InitializeCommonEvent(0, 90015140, 52501551, 210, 9115, 52508551);
    $InitializeCommonEvent(0, 90015140, 52501552, 210, 9118, 52508552);
    $InitializeCommonEvent(0, 90015140, 52501553, 210, 9113, 52508553);
    $InitializeCommonEvent(0, 90015140, 52501554, 210, 9114, 52508554);
    $InitializeCommonEvent(0, 90015140, 52501555, 210, 9117, 52508555);
    $InitializeCommonEvent(0, 90015140, 52501556, 210, 9119, 52508556);
    $InitializeCommonEvent(0, 90015140, 52501557, 210, 9116, 52508557);
});

