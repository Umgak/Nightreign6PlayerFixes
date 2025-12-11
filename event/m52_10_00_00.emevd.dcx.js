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
        if (EventFlag(52100000)) {
            $InitializeCommonEvent(0, 90055000, 52105200, 1, 52102200, 52100201);
            $InitializeCommonEvent(0, 90055001, 52105200, 1, 52100201, 52100200);
        }
        if (EventFlag(52100001)) {
            $InitializeCommonEvent(0, 90055000, 52105200, 2, 52102200, 52100201);
            $InitializeCommonEvent(0, 90055001, 52105200, 2, 52100201, 52100200);
        }
    }
    if (IsMapVariation(1)) {
        $InitializeCommonEvent(0, 90035000, 52100200);
    }
    if (IsMapVariation(2)) {
        $InitializeCommonEvent(0, 90015442, 52102200, 52100200);
    }
    $InitializeCommonEvent(0, 90065910, 52100200, 52100205, 52100800, 480000, 690047, 52105210, 52100800, 904800600, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90065911, 52100200, 52100800, 480000, 52105210, 52100800, 904800600, 0, 0, 0, 0, 0);
    if (!IsMapVariation(2)) {
        $InitializeCommonEvent(0, 90065900, 52100800, 2, 0, 0, 1050, 480000, 904800600, 52100800);
    }
    $InitializeCommonEvent(0, 90015012, 52105210, 52100200);
    $InitializeCommonEvent(1, 90015012, 0, 52100200);
    $InitializeCommonEvent(0, 90015020, 52100200, 52100800);
    $InitializeCommonEvent(0, 90015008, 52100205, 52100800, 480000, 52100800, 10630, 0);
    $InitializeCommonEvent(0, 90065235, 52100800, 10641, 10650, 0, 0);
    $InitializeCommonEvent(0, 90065235, 52100800, 10642, 10651, 0, 0);
    $InitializeCommonEvent(0, 90065235, 52100800, 10643, 10652, 0, 0);
    $InitializeCommonEvent(0, 90065235, 52100800, 10645, 10660, 10665, 0);
    $InitializeCommonEvent(0, 90065235, 52100800, 10646, 10661, 10666, 0);
    $InitializeCommonEvent(0, 90065235, 52100800, 10647, 10662, 10667, 0);
    $InitializeCommonEvent(0, 90065235, 52100800, 10648, 10653, 0, 1);
    $InitializeCommonEvent(0, 90065236, 52100800, 52105211, 52105212, 52100200);
    if (IsMapVariation(2)) {
        $InitializeCommonEvent(0, 90015443, 52102200, 52100800);
        $InitializeCommonEvent(0, 90015023, 52100200, 40, 0, 52105210, 52100800, 904800600, 0, 0, 0, 0);
        $InitializeCommonEvent(0, 90015030, 52100200, 52105210, 40, 480000, 0);
        $InitializeCommonEvent(0, 90015002, 0, 52100200, 0, 52100800, 1020, 480000, -1, 904800600, 52100800);
        $InitializeCommonEvent(0, 90015470, 52102200, 52100200, 52100800, 52100800, 52105211, 52105212);
        $InitializeCommonEvent(0, 90015446, 52105210, 52100200, 52100800, 52102200);
        $InitializeCommonEvent(0, 90015460, 52102200, 52100800);
    }
    $InitializeCommonEvent(0, 90035001, 52100800);
});


