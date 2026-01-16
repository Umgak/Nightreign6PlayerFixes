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
        $InitializeCommonEvent(0, 90015007, 0, 52520800, 52522800, 30, 905040000, 0, 0);
        $InitializeCommonEvent(0, 90015031, 0, 52520800, 52522800, 30, 940000, 0);
    } else {
        $InitializeCommonEvent(0, 90015007, 0, 52520800, 52522800, 30, 905040000, 0, 0);
        $InitializeCommonEvent(0, 90015031, 0, 52520800, 52522800, 30, 941010, 0);
    }
    $InitializeCommonEvent(0, 90015025, 0, 0, 52520800, 52520800, 1030, 941010, 11200, 905040000, 52520800, 2);
    $InitializeCommonEvent(0, 90015006, 52521500, 52520500, 52520800, 5);
    $InitializeCommonEvent(0, 90015005, 52521500, 52522800, 52520800);
    GotoIf(S0, Signed(0) != 0);
    GotoIf(S0, 0 != 0);
    Goto(S2);
S0:
    GotoIf(S1, 941010 != 0);
    $InitializeCommonEvent(0, 90015008, 0, 52520800, 940000, 52520800, 0, 0);
    Goto(S2);
S1:
    $InitializeCommonEvent(0, 90015008, 0, 52520800, 941010, 52520800, 0, 0);
S2:
    $InitializeCommonEvent(0, 90015050, 52520800, 8170);
    if (940000 == 0) {
        $InitializeCommonEvent(0, 90015007, 0, 52525810, 52522810, 30, 905192000, 0, 0);
        $InitializeCommonEvent(0, 90015031, 0, 52525810, 52522810, 30, 940000, 0);
    } else {
        $InitializeCommonEvent(0, 90015007, 0, 52525810, 52522810, 30, 905192000, 0, 0);
        $InitializeCommonEvent(0, 90015031, 0, 52525810, 52522810, 30, 940000, 0);
    }
    $InitializeCommonEvent(0, 90015025, 0, 0, 52520810, 52525810, 1030, 940000, 11200, 905192000, 52520510, 3);
    $InitializeCommonEvent(0, 90015006, 52521510, 52520510, 52520810, 5);
    $InitializeCommonEvent(0, 90015005, 52521510, 52522810, 52520810);
    GotoIf(S3, Signed(0) != 0);
    GotoIf(S3, 0 != 0);
    Goto(S5);
S3:
    GotoIf(S4, 940000 != 0);
    $InitializeCommonEvent(0, 90015008, 0, 52520810, 940000, 52525810, 0, 0);
    Goto(S5);
S4:
    $InitializeCommonEvent(0, 90015008, 0, 52520810, 940000, 52525810, 0, 0);
S5:
    $InitializeCommonEvent(0, 90015050, 52520810, 8170);
    $InitializeCommonEvent(0, 90005210, 52520811, 30001, 20001, 52522811, 23, 1, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90005210, 52520812, 30001, 20001, 52522811, 24, 1, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90035280, 52522491, 52520700, 52520701, 52520702, 8060, 0, 52520800, 52520810, 0, 0, 0);
    $InitializeCommonEvent(0, 90035280, 52522491, 52520700, 52520701, 52520702, 80010, 0, 52520800, 52520810, 0, 0, 0);
    $InitializeCommonEvent(0, 90035280, 52522491, 52520700, 52520701, 52520702, 80011, 1, 52520800, 52520810, 0, 0, 0);
    $InitializeCommonEvent(0, 90035281, 52522491, 52520700, 52520701, 52520702, 80011, 52520800, 52520810, 0, 0, 0);
    $InitializeCommonEvent(0, 90035282, 52520490, 52522490, 52520700, 52520701, 52520702, 52520703);
    $InitializeCommonEvent(0, 90035283, 52520490, 52522491, 52521690, 52520700, 52520701, 52520702, 52520704, 52520705, 52520706);
    $InitializeCommonEvent(0, 90035284, 52525490, 52525491, 52520700, 52520702, 52520705, 52520706);
    $InitializeCommonEvent(0, 90035285, 52520490, 52520700, 52520701, 52520702, 52520705, 52520706);
    $InitializeCommonEvent(0, 90035286, 52520490, 52522491, 52520700, 52520701, 52520702, 52520705, 52520706);
    $InitializeCommonEvent(0, 90035288, 52522491, 52520700, 52520702, 52520705, 52520706);
    $InitializeCommonEvent(0, 90015000, 52520704, 52520490, 907640001, 50, 0, 52520706);
    $InitializeCommonEvent(0, 90015025, 8081, 52520704, 52520705, 52520490, 1020, 0, -1, -1, 52520490, 0);
    $InitializeCommonEvent(0, 90015310, 52520050, 52520051, 2, 52520200, 52520202, 52520203, 52522405, 52522406, 52522407, 52522410, 52522411, 52522412, 52522415, 52522416, 52522417, 0, 1, 2, 52522400);
    $InitializeCommonEvent(0, 90015301, 52525300, 52520200, 52520201, 52520202, 52520203, 2);
    $InitializeCommonEvent(0, 90015306, 1027406500);
    $InitializeCommonEvent(0, 90025010, 1027402800, 9025, 1);
    $InitializeCommonEvent(0, 90015304, 52520050, 52520200, 52520202);
    if (2 >= 2) {
        $InitializeCommonEvent(0, 90015304, 52520051, 52520200, 52520203);
    }
    $InitializeCommonEvent(0, 90015140, 52521550, 210, 9112, 52528550);
    $InitializeCommonEvent(0, 90015140, 52521551, 210, 9115, 52528551);
    $InitializeCommonEvent(0, 90015140, 52521552, 210, 9118, 52528552);
    $InitializeCommonEvent(0, 90015140, 52521553, 210, 9113, 52528553);
    $InitializeCommonEvent(0, 90015140, 52521554, 210, 9114, 52528554);
    $InitializeCommonEvent(0, 90015140, 52521555, 210, 9117, 52528555);
    $InitializeCommonEvent(0, 90015140, 52521556, 210, 9119, 52528556);
    $InitializeCommonEvent(0, 90015140, 52521557, 210, 9116, 52528557);
});

