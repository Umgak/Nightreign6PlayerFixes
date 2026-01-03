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
        if (EventFlag(52000000)) {
            $InitializeCommonEvent(0, 90055000, 52005200, 1, 52002200, 52000201);
            $InitializeCommonEvent(0, 90055001, 52005200, 1, 52000201, 52000200);
        }
        if (EventFlag(52000001)) {
            $InitializeCommonEvent(0, 90055000, 52005200, 2, 52002200, 52000201);
            $InitializeCommonEvent(0, 90055001, 52005200, 2, 52000201, 52000200);
        }
    }
    if (IsMapVariation(1)) {
        $InitializeCommonEvent(0, 90035000, 52000200);
    }
    if (IsMapVariation(2)) {
        $InitializeCommonEvent(0, 90015442, 52002200, 52000200);
    }
    $InitializeCommonEvent(0, 90065910, 52000200, 52000205, 52000800, 941000, 690047, 52005210, 52000800, 905040600, 52000810, 905250600, 0, 0);
    $InitializeCommonEvent(0, 90065911, 52000200, 52000800, 941000, 52005210, 52000800, 905040600, 52000810, 905250600, 0, 0, 0);
    if (!IsMapVariation(2)) {
        $InitializeCommonEvent(0, 90065900, 52000800, 1, 0, 0, 1050, 941000, 905040600, 52000800);
    }
    $InitializeCommonEvent(0, 90015012, 52005210, 52000200);
    $InitializeCommonEvent(1, 90015012, 0, 52000200);
    $InitializeCommonEvent(0, 90015020, 52000200, 52000800);
    $InitializeCommonEvent(0, 90015008, 52000205, 52000800, 941000, 52000800, -1, 0);
    $InitializeCommonEvent(0, 90065245, 52000810, 60334, Weather.Type82, 60260, 28, 39, 52000210, 52000200, 52000800);
    $InitializeCommonEvent(0, 90065245, 52000810, 60335, Weather.Type41, 60261, 31, 40, 52000211, 52000200, 52000800);
    $InitializeCommonEvent(0, 90065245, 52000810, 60336, Weather.Type11, 60262, 28, 39, 52000212, 52000200, 52000800);
    $InitializeCommonEvent(0, 90065246, 52000810, 0, 52000210, 52000211, 52000212, 52000200, 52000800);
    if (IsMapVariation(2)) {
        $InitializeCommonEvent(0, 90015443, 52002200, 52000800);
        $InitializeCommonEvent(0, 90015023, 52000200, 40, 0, 52005210, 52000800, 905040600, 52000810, 905250600, 0, 0);
        $InitializeCommonEvent(0, 90015030, 52000200, 52005210, 40, 941000, 0);
        $InitializeCommonEvent(0, 90015002, 0, 52000200, 0, 52000800, 1020, 941000, 110320, 905040600, 52000800);
        $InitializeCommonEvent(0, 90015470, 52002200, 52000200, 52000800, 52000800, 52000810, 0, 0);
        $InitializeCommonEvent(0, 90015446, 52005210, 52000200, 52000800, 52002200);
        $InitializeCommonEvent(0, 90015460, 52002200, 52000800);
        $InitializeCommonEvent(0, 90015460, 52002200, 52000810);
    }
    $InitializeCommonEvent(0, 90035001, 52000800);
});

