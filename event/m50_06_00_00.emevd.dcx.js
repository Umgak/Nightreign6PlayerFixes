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
        $InitializeCommonEvent(0, 90015000, 0, 50065800, 903550600, 30, 0, 0);
        $InitializeCommonEvent(0, 90015030, 0, 50065800, 30, 940000, 0);
    } else {
        $InitializeCommonEvent(0, 90015000, 0, 50065800, 903550600, 30, 0, 0);
        $InitializeCommonEvent(0, 90015030, 0, 50065800, 30, 940000, 0);
    }
    $InitializeCommonEvent(0, 90015002, 0, 0, 50060800, 50065800, 1030, 940000, 11200, 903550600, 50060500);
    $InitializeCommonEvent(0, 90015006, 50061500, 50060500, 50060800, 5);
    $InitializeCommonEvent(0, 90015005, 50061500, 50062800, 50060800);
    GotoIf(S0, Signed(0) != 0);
    GotoIf(S0, 0 != 0);
    Goto(S2);
S0:
    GotoIf(S1, 940000 != 0);
    $InitializeCommonEvent(0, 90015008, 0, 50060800, 940000, 50065800, 0, 0);
    Goto(S2);
S1:
    $InitializeCommonEvent(0, 90015008, 0, 50060800, 940000, 50065800, 0, 0);
S2:
    $InitializeCommonEvent(0, 90005250, 50060800, 50062800, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50060801, 50062800, 0, -1);
    if (IsMapVariation(0)) {
        $InitializeCommonEvent(0, 90045040, 0, 50060400);
        $InitializeCommonEvent(0, 90045041, 0, 50060400, 50065200, 50065201);
    }
    if (IsMapVariation(0)) {
        $InitializeCommonEvent(0, 90045040, 0, 50060401);
        $InitializeCommonEvent(0, 90045041, 0, 50060401, 50065210, 50065211);
    }
    if (IsMapVariation(0)) {
        $InitializeCommonEvent(0, 90045040, 0, 50060402);
        $InitializeCommonEvent(0, 90045041, 0, 50060402, 50065220, 50065221);
    }
    $InitializeCommonEvent(0, 90035280, 50062491, 50060700, 50060701, 50060702, 8060, 0, 50060800, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90035280, 50062491, 50060700, 50060701, 50060702, 80010, 0, 50060800, 0, 0, 0, 0);
    if (!IsPlayerCount(1)) {
        $InitializeCommonEvent(0, 90035280, 50062491, 50060700, 50060701, 50060702, 80011, 1, 50060800, 0, 0, 0, 0);
    }
    $InitializeCommonEvent(0, 90035281, 50062491, 50060700, 50060701, 50060702, 80011, 50060800, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90035282, 50060490, 50062490, 50060700, 50060701, 50060702, 50060703);
    $InitializeCommonEvent(0, 90035283, 50060490, 50062491, 50061690, 50060700, 50060701, 50060702, 50060704, 50060705, 50060706);
    $InitializeCommonEvent(0, 90035284, 50065490, 50065491, 50060700, 50060702, 50060705, 50060706);
    $InitializeCommonEvent(0, 90035285, 50060490, 50060700, 50060701, 50060702, 50060705, 50060706);
    $InitializeCommonEvent(0, 90035286, 50060490, 50062491, 50060700, 50060701, 50060702, 50060705, 50060706);
    $InitializeCommonEvent(0, 90035288, 50062491, 50060700, 50060702, 50060705, 50060706);
    $InitializeCommonEvent(0, 90015000, 50060704, 50060490, 907640001, 50, 0, 50060706);
    $InitializeCommonEvent(0, 90015025, 8081, 50060704, 50060705, 50060490, 1020, 0, -1, -1, 50060490, 0);
    $InitializeCommonEvent(0, 90015310, 50060050, 50060051, 1, 50060200, 50060202, 50060203, 50062405, 50062406, 50062407, 0, 1, 2, 0, 1, 2, 0, 1, 2, 50062400);
    $InitializeCommonEvent(0, 90015301, 50065300, 50060200, 50060201, 50060202, 50060203, 1);
    $InitializeCommonEvent(0, 90015306, 50066500);
    $InitializeCommonEvent(0, 90015303, 50062401);
    $InitializeCommonEvent(0, 90015305, 50062430, 50062431, 50062432, 50062433);
    $InitializeCommonEvent(0, 90015304, 50060050, 50060200, 50060202);
    if (1 >= 2) {
        $InitializeCommonEvent(0, 90015304, 50060051, 50060200, 50060203);
    }
    $InitializeCommonEvent(0, 90005250, 50060200, 50062200, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50060201, 50062200, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50060202, 50062200, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50060203, 50062200, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50060214, 50062200, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50060215, 50062300, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50060216, 50062300, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50060290, 50062290, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50060291, 50062290, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50060292, 50062290, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50060293, 50062290, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50060300, 50062300, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50060301, 50062300, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50060302, 50062300, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50060303, 50062300, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50060403, 50062300, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50060451, 50062300, 0, -1);
    $InitializeEvent(0, 50062700);
    $InitializeEvent(0, 50062720);
    $InitializeEvent(0, 50062710);
});

$Event(50062700, Restart, function() {
    if (!EventFlag(50062711)) {
        ForceAnimationPlayback(50061200, 0, true, false, false);
        EndEvent();
    }
L0:
    ForceAnimationPlayback(50061200, 2, true, false, false);
    EndEvent();
});

$Event(50062710, Restart, function() {
    if (!EventFlag(50062711)) {
        WaitFor(InArea(20000, 50062820));
        EndIf(EventFlag(50062711));
        ForceAnimationPlayback(50061210, 1, false, true, false);
        SetNetworkconnectedEventFlagID(50062711, ON);
    }
    ForceAnimationPlayback(50061210, 2, true, false, false);
});

$Event(50062720, End, function() {
    WaitFor(EventFlag(50062711));
    ForceAnimationPlayback(50061200, 1, false, false, false);
});


