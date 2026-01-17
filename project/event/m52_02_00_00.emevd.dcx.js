// ==EMEVD==
// @docs    nr-common.emedf.json
// @compress    DCX_KRAK
// @game    Sekiro
// @string    "W:\\CL\\data\\Param\\event\\common_func.emevd\u0000W:\\CL\\data\\Param\\event\\common_macro.emevd\u0000\u0000\u0000\u0000\u0000\u0000"
// @linked    [0,82]
// @version    3.6.2
// ==/EMEVD==

$Event(0, Default, function() {
    if (IsMapVariation(0)) {
        if (EventFlag(52020000)) {
            $InitializeCommonEvent(0, 90055000, 52025200, 1, 52022200, 52020201);
            $InitializeCommonEvent(0, 90055001, 52025200, 1, 52020201, 52020200);
        }
        if (EventFlag(52020001)) {
            $InitializeCommonEvent(0, 90055000, 52025200, 2, 52022200, 52020201);
            $InitializeCommonEvent(0, 90055001, 52025200, 2, 52020201, 52020200);
        }
    }
    if (IsMapVariation(1)) {
        $InitializeCommonEvent(0, 90035000, 52020200);
    }
    if (IsMapVariation(2)) {
        $InitializeCommonEvent(0, 90015442, 52022200, 52020200);
    }
    $InitializeCommonEvent(0, 90065220, 52020200, 52020205, 52020801, 942000, 690047, 52020800, 905070000, 905070600, 52020800);
    $InitializeCommonEvent(0, 90065221, 52020801, 52020206, 52020800, 690048, 52020800, 52020810, 905070030, 52020820, 905070020, 52020830, 905070030, 905070600);
    $InitializeCommonEvent(0, 90065900, 52020800, 1, 0, 0, 1050, 942000, 905070600, 52020800);
    $InitializeCommonEvent(0, 90065222, 52020200, 52020800, 942000, 52025210, 52020810, 905070030, 52020820, 905070020, 52020830, 905070030);
    $InitializeCommonEvent(0, 90015012, 52025210, 52020200);
    $InitializeCommonEvent(0, 90015020, 52020200, 52020800);
    $InitializeCommonEvent(0, 90015008, 52020205, 52020800, 942000, 52025210, 0, 0);
    $InitializeCommonEvent(0, 90035001, 52020800);
});

