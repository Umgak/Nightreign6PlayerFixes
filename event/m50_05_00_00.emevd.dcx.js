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
        $InitializeCommonEvent(0, 90015000, 0, 50055800, 903201600, 30, 0, 0);
        $InitializeCommonEvent(0, 90015030, 0, 50055800, 30, 940000, 0);
    } else {
        $InitializeCommonEvent(0, 90015000, 0, 50055800, 903201600, 30, 0, 0);
        $InitializeCommonEvent(0, 90015030, 0, 50055800, 30, 940000, 0);
    }
    $InitializeCommonEvent(0, 90015002, 0, 0, 50050800, 50055800, 1030, 940000, 11200, 903201600, 50050500);
    $InitializeCommonEvent(0, 90015006, 50051500, 50050500, 50050800, 5);
    $InitializeCommonEvent(0, 90015005, 50051500, 50052800, 50050800);
    GotoIf(S0, Signed(0) != 0);
    GotoIf(S0, 0 != 0);
    Goto(S2);
S0:
    GotoIf(S1, 940000 != 0);
    $InitializeCommonEvent(0, 90015008, 0, 50050800, 940000, 50055800, 0, 0);
    Goto(S2);
S1:
    $InitializeCommonEvent(0, 90015008, 0, 50050800, 940000, 50055800, 0, 0);
S2:
    $InitializeCommonEvent(0, 90005250, 50050800, 50052800, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50050810, 50052800, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50050811, 50052800, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50050812, 50052800, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50050813, 50052800, 0, -1);
    $InitializeCommonEvent(0, 90035280, 50052491, 50050700, 50050701, 50050702, 8060, 0, 50050800, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90035280, 50052491, 50050700, 50050701, 50050702, 80010, 0, 50050800, 0, 0, 0, 0);
    if (!IsPlayerCount(1)) {
        $InitializeCommonEvent(0, 90035280, 50052491, 50050700, 50050701, 50050702, 80011, 1, 50050800, 0, 0, 0, 0);
    }
    $InitializeCommonEvent(0, 90035281, 50052491, 50050700, 50050701, 50050702, 80011, 50050800, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90035282, 50050490, 50052490, 50050700, 50050701, 50050702, 50050703);
    $InitializeCommonEvent(0, 90035283, 50050490, 50052491, 50051690, 50050700, 50050701, 50050702, 50050704, 50050705, 50050706);
    $InitializeCommonEvent(0, 90035284, 50055490, 50055491, 50050700, 50050702, 50050705, 50050706);
    $InitializeCommonEvent(0, 90035285, 50050490, 50050700, 50050701, 50050702, 50050705, 50050706);
    $InitializeCommonEvent(0, 90035286, 50050490, 50052491, 50050700, 50050701, 50050702, 50050705, 50050706);
    $InitializeCommonEvent(0, 90035288, 50052491, 50050700, 50050702, 50050705, 50050706);
    $InitializeCommonEvent(0, 90015000, 50050704, 50050490, 907640001, 50, 0, 50050706);
    $InitializeCommonEvent(0, 90015025, 8081, 50050704, 50050705, 50050490, 1020, 0, -1, -1, 50050490, 0);
    $InitializeCommonEvent(0, 90015310, 50050050, 50050051, 1, 50050200, 50050202, 50050203, 50052405, 50052406, 50052407, 0, 1, 2, 0, 1, 2, 0, 1, 2, 50052400);
    $InitializeCommonEvent(0, 90015301, 50055300, 50050200, 50050201, 50050202, 50050203, 1);
    $InitializeCommonEvent(0, 90015306, 50056500);
    $InitializeCommonEvent(0, 90015303, 50052401);
    $InitializeCommonEvent(0, 90015305, 50052430, 50052431, 50052432, 50052433);
    $InitializeCommonEvent(0, 90015304, 50050050, 50050200, 50050202);
    if (1 >= 2) {
        $InitializeCommonEvent(0, 90015304, 50050051, 50050200, 50050203);
    }
    $InitializeEvent(0, 50052700);
    $InitializeEvent(0, 50052720);
    $InitializeEvent(0, 50052710);
    $InitializeCommonEvent(0, 90015060, 50052705);
});

$Event(50052700, Restart, function() {
    if (!EventFlag(50052711)) {
        ForceAnimationPlayback(50051200, 0, true, false, false);
        EndEvent();
    }
L0:
    ForceAnimationPlayback(50051200, 2, true, false, false);
    EndEvent();
});

$Event(50052710, Restart, function() {
    if (!EventFlag(50052711)) {
        WaitFor(InArea(20000, 50052820));
        EndIf(EventFlag(50052711));
        ForceAnimationPlayback(50051210, 1, false, true, false);
        SetNetworkconnectedEventFlagID(50052711, ON);
    }
    ForceAnimationPlayback(50051210, 2, true, false, false);
});

$Event(50052720, End, function() {
    WaitFor(EventFlag(50052711));
    ForceAnimationPlayback(50051200, 1, false, false, false);
});

