// ==EMEVD==
// @docs    nr-common.emedf.json
// @compress    DCX_KRAK
// @game    Sekiro
// @string    "W:\\CL\\data\\Param\\event\\common_func.emevd\u0000W:\\CL\\data\\Param\\event\\common_macro.emevd\u0000\u0000\u0000\u0000\u0000\u0000"
// @linked    [0,82]
// @version    3.6.2
// ==/EMEVD==

$Event(0, Default, function() {
    $InitializeCommonEvent(0, 90015009, 51004700, 51001501, 0, 1);
    $InitializeCommonEvent(0, 90015208, 9328, 51004700, 9040);
    $InitializeEvent(0, 51002510);
    $InitializeEvent(0, 51002520);
    $InitializeCommonEvent(0, 90015500, 51002300);
});

$Event(51002510, Default, function() {
    DisableNetworkSync();
    WaitFor(EventFlag(51004700));
    SetWorldMapPointFlag(7, ON);
    SetWorldMapPointFlag(8, OFF);
});

$Event(51002520, Default, function() {
    DisableNetworkSync();
    EndIf(EventFlag(51004700));
    WaitFor(EventFlag(51004700));
    ForceAnimationPlayback(20000, 60071, false, false, false);
    SetSpEffect(20000, 99270);
});

