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
        if (EventFlag(52110000)) {
            $InitializeCommonEvent(0, 90055000, 52115200, 1, 52112200, 52110201);
            $InitializeCommonEvent(0, 90055001, 52115200, 1, 52110201, 52110200);
        }
        if (EventFlag(52110001)) {
            $InitializeCommonEvent(0, 90055000, 52115200, 2, 52112200, 52110201);
            $InitializeCommonEvent(0, 90055001, 52115200, 2, 52110201, 52110200);
        }
    }
    if (IsMapVariation(1)) {
        $InitializeCommonEvent(0, 90035000, 52110200);
    }
    if (IsMapVariation(2)) {
        $InitializeCommonEvent(0, 90015442, 52112200, 52110200);
    }
    $InitializeCommonEvent(0, 90065910, 52110200, 52110205, 52110800, 521000, 690047, 52115210, 52110800, 905210600, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90065911, 52110200, 52110800, 521000, 52115210, 52110800, 905210600, 0, 0, 0, 0, 0);
    if (!IsMapVariation(2)) {
        $InitializeCommonEvent(0, 90065900, 52110800, 2, 0, 0, 1050, 521000, 905210600, 52110800);
    }
    $InitializeCommonEvent(0, 90015012, 52115210, 52110200);
    $InitializeCommonEvent(1, 90015012, 0, 52110200);
    $InitializeCommonEvent(0, 90015020, 52110200, 52110800);
    $InitializeCommonEvent(0, 90015008, 52110205, 52110800, 521000, 52110800, 60245, 0);
    $InitializeCommonEvent(0, 90065245, 52110800, 60210, Weather.Type82, 60260, 28, 39, 52110210, 52110200, 52110800);
    $InitializeCommonEvent(0, 90065245, 52110800, 60211, Weather.Type41, 60261, 31, 40, 52110211, 52110200, 52110800);
    $InitializeCommonEvent(0, 90065245, 52110800, 60212, Weather.Type11, 60262, 28, 39, 52110212, 52110200, 52110800);
    $InitializeCommonEvent(0, 90065246, 52110800, 60215, 52110210, 52110211, 52110212, 52110200, 52110800);
    $InitializeCommonEvent(0, 90065247, 52110800, 10002, 52110200, 52110800);
    $InitializeCommonEvent(1, 90065247, 52110800, 10003, 52110200, 52110800);
    $InitializeCommonEvent(2, 90065247, 52110800, 10004, 52110200, 52110800);
    if (IsMapVariation(2)) {
        $InitializeCommonEvent(0, 90015443, 52115200, 52110800);
        $InitializeCommonEvent(0, 90015023, 52110200, 40, 0, 52115210, 52110800, 905210600, 0, 0, 0, 0);
        $InitializeCommonEvent(0, 90015030, 52110200, 52115210, 40, 521000, 0);
        $InitializeCommonEvent(0, 90015002, 0, 52110200, 0, 52110800, 1020, 521000, -1, 905210600, 52110800);
        $InitializeCommonEvent(0, 90015470, 52115200, 52110200, 52110800, 52110800, 0, 0);
        $InitializeCommonEvent(0, 90015446, 52115210, 52110200, 52110800, 52115200);
        $InitializeCommonEvent(0, 90015460, 52115200, 52110800);
    }
    $InitializeCommonEvent(0, 90035001, 52110800);
});

