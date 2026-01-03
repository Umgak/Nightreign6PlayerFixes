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
        if (EventFlag(52010000)) {
            $InitializeCommonEvent(0, 90055000, 52015200, 1, 52012200, 52010201);
            $InitializeCommonEvent(0, 90055001, 52015200, 1, 52010201, 52010200);
        }
        if (EventFlag(52010001)) {
            $InitializeCommonEvent(0, 90055000, 52015200, 2, 52012200, 52010201);
            $InitializeCommonEvent(0, 90055001, 52015200, 2, 52010201, 52010200);
        }
    }
    if (IsMapVariation(1)) {
        $InitializeCommonEvent(0, 90035000, 52010200);
    }
    if (IsMapVariation(2)) {
        $InitializeCommonEvent(0, 90015442, 52012200, 52010200);
    }
    $InitializeCommonEvent(0, 90065910, 52010200, 52010205, 52010800, 931000, 690047, 52015210, 52010800, 905820600, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90065911, 52010200, 52010800, 931000, 52015210, 52010800, 905820600, 0, 0, 0, 0, 0);
    if (!IsMapVariation(2)) {
        $InitializeCommonEvent(0, 90065900, 52010800, 1, 0, 0, 1050, 931000, 905820600, 52010800);
    }
    $InitializeCommonEvent(0, 90015012, 52015210, 52010200);
    $InitializeCommonEvent(1, 90015012, 0, 52010200);
    $InitializeCommonEvent(0, 90015020, 52010200, 52010800);
    $InitializeCommonEvent(0, 90015008, 52010205, 52010800, 931000, 52010800, 0, 0.6);
    if (IsMapVariation(2)) {
        $InitializeCommonEvent(0, 90015443, 52012200, 52010800);
        $InitializeCommonEvent(0, 90015023, 52010200, 40, 0, 52015210, 52010800, 905820600, 0, 0, 0, 0);
        $InitializeCommonEvent(0, 90015030, 52010200, 52015210, 40, 931000, 0);
        $InitializeCommonEvent(0, 90015002, 0, 52010200, 0, 52015210, 1020, 931000, 110320, 905820600, 52010800);
        $InitializeCommonEvent(0, 90015470, 52012200, 52010200, 52010800, 52015210, 0, 0, 52015210);
        $InitializeCommonEvent(0, 90015446, 52015210, 52010200, 52010800, 52012200);
        $InitializeCommonEvent(0, 90015460, 52012200, 52010800);
        $InitializeCommonEvent(0, 90015460, 52012200, 0);
        $InitializeCommonEvent(0, 90015460, 52012200, 0);
    }
    if (IsMapVariation(2)) {
        $InitializeCommonEvent(0, 90015475, 52012200, 52010800);
        $InitializeCommonEvent(0, 90015475, 52012200, 0);
        $InitializeCommonEvent(0, 90015475, 52012200, 0);
    }
    $InitializeCommonEvent(0, 90035001, 52010800);
});

